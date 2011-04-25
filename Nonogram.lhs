> module Nonogram where

> import Data.List (group, foldl', transpose)
> import Control.Monad (forM_, guard, mplus)

> import Control.Parallel (pseq, par)

> import Control.Parallel.Strategies (parMap, r0, rwhnf, rdeepseq)
> import Control.DeepSeq (NFData (..))

> import Debug.Trace

> trace' x = traceShow x x

import Data.Maybe (fromMaybe)

import Data.Set (Set)
import qualified Data.Set as S

A cell can be either filled or not

> data Cell = Black
>           | White
>           deriving (Eq, Ord)

> instance NFData Cell where
>     rnf x = x `seq` ()

> instance Show Cell where
>     show Black = "X"
>     show White = " "

A row is simply a list of cells.

> type Row = [Cell]
> type Column = [Cell]

> type Nonogram = [Row]

We represent a description of a row/column by a list of numbers indicating the
length of the contiguous black areas.

> type Description = [Int]

> showRow :: Row -> String
> showRow = concatMap show 

row
---

The `row` function describes a valid row(s), given the width and a description:

> row :: Int -> Description -> [Row]

For a row without a description, there is only one possibility: a completely
white row.

> row width [] = [replicate width White]

Otherwise, we consider the first number in the description (`d`), which
indicates the length of the next contiguous black area.

> row width (d : ds)

This `d` cannot be larger than the total row width.

>     | d > width = []

Now, there are two possibilities we need to consider: whether or not the black
area starts at the beginning of the row.

>     | otherwise =

If the black area starts at the beginning of the row, we know that the first `d`
cells will be black, followed by a white cell. The rest of the row is
recursively defined as another row with a smaller width (`width - d - 1`) and
the same description (without the `d` black cells).

TODO: Do not add white when at the end of the row

>         map ((replicate d Black ++ if width - d - 1 > 0 then [White] else []) ++)
>             (row (width - d - 1) ds) ++

If the black area does not start at the beginning of the row, we know that the
row starts with a white cell. The rest of the row is recursively defined as a
row with a smaller width (`width - `) and the same description.

>         map (White :) (row (width - 1) (d : ds))

column
------

Generate the description of a column

> description :: Column -> Description
> description = map length . filter isBlack . group
>   where
>     isBlack []          = False
>     isBlack (White : _) = False
>     isBlack _           = True

> columns :: Nonogram -> [Column]
> columns = transpose

-- > f :: [Description] -> 

> check :: [Description] -> Nonogram -> Maybe Nonogram
> check columnDescriptions nonogram
>     | columnDescriptions == (map description (columns nonogram)) = Just nonogram
>     | otherwise = Nothing

> reduce :: Maybe Nonogram -> Maybe Nonogram -> Maybe Nonogram
> reduce = mplus

nonogram
--------

> simple :: (a -> [b]) -> [a] -> [[b]]
> simple = mapM

> parallel :: NFData b => (a -> [b]) -> [a] -> [[b]]
> parallel f = sequence . parMap rdeepseq f

> mapReduce :: (a -> b) -> (b -> b -> b) -> b -> [a] -> b
> mapReduce f r i = foldl' r i . map f

> parMapReduce :: NFData b => (a -> b) -> (b -> b -> b) -> b -> [a] -> b
> parMapReduce f r = parMapReduce'
>   where
>     parMapReduce' i [] = i
>     parMapReduce' i (x : y : ls) =
>         let x' = f x
>             y' = f y
>         in x' `par` y' `pseq` parMapReduce' (r x' y') ls
>     parMapReduce' i (x : []) = r i (f x)
>     {-# NOINLINE parMapReduce' #-}

> type Strategy =  (Nonogram -> Maybe Nonogram)
>               -> (Maybe Nonogram -> Maybe Nonogram -> Maybe Nonogram)
>               -> Maybe Nonogram
>               -> [Nonogram]
>               -> Maybe Nonogram

> nonogram :: Strategy -> [Description] -> [Description] -> Maybe Nonogram
> nonogram strategy rowDescriptions columnDescriptions =

>     let width = length columnDescriptions
>         height = length rowDescriptions

>         nonograms = nonograms' width rowDescriptions

>     in strategy (check columnDescriptions) reduce Nothing nonograms

>     {- nonogram' <- (map (row width) rowDescriptions)
>     guard $ all (uncurry $ valid nonogram') (zip [0 ..] columnDescriptions)
>     return nonogram'
>   where
>     valid nonogram' index description =
>         description == description index nonogram'
>     -}

> nonograms' :: Int -> [Description] -> [Nonogram]
> nonograms' width rowDescriptions =
>     let height = length rowDescriptions
>     in mapM (row width) rowDescriptions

testing
-------

> type Puzzle = ([Description], [Description])

> solve :: Puzzle -> Maybe Nonogram
> solve = uncurry (nonogram mapReduce)

> parSolve :: Puzzle -> Maybe Nonogram
> parSolve = uncurry (nonogram parMapReduce)

> solve' :: Puzzle -> IO ()
> solve' puzzle = case solve puzzle of
>     Nothing -> putStrLn "No solution found"
>     Just s  -> mapM_ (putStrLn . showRow) s
