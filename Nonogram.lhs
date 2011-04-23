> module Nonogram where

> import Data.List (group)
> import Control.Monad (forM_, guard)

> import Control.Parallel.Strategies (parMap, r0)

> import Debug.Trace

import Data.Maybe (fromMaybe)

import Data.Set (Set)
import qualified Data.Set as S

A cell can be either filled or not

> data Cell = Black
>           | White
>           deriving (Eq, Ord)

> instance Show Cell where
>     show Black = "X"
>     show White = " "

A row is simply a list of cells.

> type Row = [Cell]

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

>         map ((replicate d Black ++ [White]) ++) (row (width - d - 1) ds) ++

If the black area does not start at the beginning of the row, we know that the
row starts with a white cell. The rest of the row is recursively defined as a
row with a smaller width (`width - `) and the same description.

>         map (White :) (row (width - 1) (d : ds))

column
------

Generate the description of a column

> columnDescription :: Int -> Nonogram -> Description
> columnDescription index = map length . filter isBlack . group . map (!! index)
>   where
>     isBlack []          = False
>     isBlack (White : _) = False
>     isBlack _           = True

nonogram
--------

> simple :: (a -> [b]) -> [a] -> [[b]]
> simple = mapM

> parallel :: (a -> [b]) -> [a] -> [[b]]
> parallel f = sequence . parMap r0 f

> nonogram :: ((Description -> [Row]) -> [Description] -> [[Row]])
>          -> [Description] -> [Description] -> [Nonogram]
> nonogram mapM' rowDescriptions columnDescriptions = do

>     let width = length columnDescriptions
>         height = length rowDescriptions

>     nonogram' <- mapM' (row width) rowDescriptions

>     guard $ all (uncurry $ valid nonogram') (zip [0 ..] columnDescriptions)

>     return nonogram'

>   where
>     valid nonogram' index description =
>         description == columnDescription index nonogram'

testing
-------

> type Puzzle = ([Description], [Description])

> solve :: Puzzle -> [Nonogram]
> solve = uncurry (nonogram simple)

> parSolve :: Puzzle -> [Nonogram]
> parSolve = uncurry (nonogram parallel)

> solve' :: Puzzle -> IO ()
> solve' puzzle = do
>     let solutions = solve puzzle
>     forM_ (zip [1 ..] solutions) $ \(n, solution) -> do
>         putStrLn $ "Solution " ++ show n ++ ":"
>         mapM_ (putStrLn . showRow) solution
>         putStrLn ""
