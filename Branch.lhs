> module Branch where
>
> import Control.Arrow (first)
> import Control.Monad (when, forM_, mplus, unless, foldM)
>
> import Data.IntMap (IntMap)
> import qualified Data.IntMap as IM

For representing the value of a cell, we use a simple datatype called `Color`.

> data Color = White | Black
>            deriving (Show, Eq)

A nonogram is then defined as a matrix of colors:

> type Nonogram = [[Color]]

The input is a list of natural numbers for every row and column. We call such a
list a `Description` and represent it as an `Int` list:

> type Description = [Int]

We use an algorithm that attempts to solve the puzzle top-down, i.e. starting at
the top row and finishing at the bottom row. It is a branch-and-bound algorithm,
searching the solution space.

As we solve more and more rows, we also learn new, partial information about the
columns -- in addition to the `Description` of the columns.

> data Partial = MustBe Color
>              | BlackArea Int
>              deriving (Show, Eq)

Initially, this partial information is deduced from the descriptions alone.
Hence, we have a function to convert a `Description` into `Partial` information.

> fromDescription :: Description -> [Partial]
> fromDescription = map BlackArea

When we reach the bottom of the nonogram, we will have a "final state" of the
partials for every column. We then need to check if we "used up" all black
areas: this function checks if the partial information can be considered empty.
Note that we do allow `White` fields in empty partials (since they do not add to
the description counts).

> emptyPartial :: [Partial] -> Bool
> emptyPartial [] = True
> emptyPartial (MustBe Black : _) = False
> emptyPartial (BlackArea _ : _) = False
> emptyPartial (_ : xs) = emptyPartial xs

We need to keep a `[Partial]` for every column. We can't store them in a list
because we want fast random access. We use an `IntMap`, a purely functional
tree-like structure (big-endian patricia trees) which performs fast for lookups
and insertions.

> type Partials = IntMap [Partial]

The following function adds a cell to partial information. It returns a value in
the `Maybe` monad:

- if the cell is inconsistent with previous information, it returns `Nothing`;

- otherwise, it returns the updated partial information.

On update, it might consume or add to the partial information. Note that the
partial information always represents "what comes next" in the column, so we
only need to inspect/modify the first few elements of the list.

> learnCell :: Color -> [Partial] -> Maybe [Partial]
> learnCell White [] = Just []
> learnCell Black [] = Nothing
> learnCell y (MustBe x : ds) = if x == y then Just ds else Nothing
> learnCell White ds = Just ds
> learnCell Black (BlackArea n : ds) = Just $
>     replicate (n - 1) (MustBe Black) ++ (MustBe White : ds)

TODO

> choose :: Maybe a -> Maybe a -> Maybe a
> choose = mplus

We also provide a convenience function to call `learnCell` for a particular
column (specified by it's 0-based index).

> learnCellAt :: Color -> Partials -> Int -> Maybe Partials
> learnCellAt cell partials index = do
>     ds <- learnCell cell $ partials IM.! index
>     return $ IM.insert index ds partials

We have a `solve` function which is a wrapper around a `solve'` function which
does the actual work. This is an optimization called the static argument
transformation [^1].

> solve :: Int -> Int -> [Description] -> Partials -> Maybe Nonogram
> solve width = solve'
>   where
>
>     -- No more rows to do: check that all columns are empty
>     solve' column [] partials = do
>         if all emptyPartial (map snd $ IM.toList partials) then return [[]]
>                                                            else Nothing
>
>     solve' column (rowDescription : rds) partials = case rowDescription of
>         -- Row finished, go to next one
>         [] -> do
>             ps <- foldM (learnCellAt White) partials [column .. width - 1]
>             rows <- solve' 0 rds ps
>             return $ replicate (width - column) White : rows
>
>         (l : ds) ->
>             let place = do
>                     when (column + l > width) Nothing
>                     ps <- foldM (learnCellAt Black) partials
>                               [column .. column + l - 1]
>
>                     let atEnd = column + l == width
>
>                     ps' <- if atEnd then return ps
>                                     else learnCellAt White ps (column + l)
>
>                     (row : rows) <- solve' (column + l + 1) (ds : rds) ps'
>                     let row' = if atEnd then row else White : row
>                     return $ (replicate l Black ++ row') : rows
>                 skip = do
>                     when (column >= width) Nothing
>                     ps <- learnCellAt White partials column
>                     (row : rows) <- solve' (column + 1) ((l : ds) : rds) ps
>                     return $ ((White : row)) : rows
>             in choose place skip
>
> nonogram :: [Description] -> [Description] -> Maybe Nonogram
> nonogram rows columns = solve (length columns) 0 rows state
>   where
>     state = IM.fromList (zip [0 ..] $ map fromDescription columns)
>
> nonogram' :: [Description] -> [Description] -> IO ()
> nonogram' rows columns = case nonogram rows columns of
>     Nothing -> putStrLn "No solution found"
>     Just g  -> mapM_ (putStrLn . concatMap cell) g
>   where
>     cell Black = "X"
>     cell White = "-"
>
> edgecase :: ([Description], [Description])
> edgecase = ( [[3], [1, 3], [1], [3], [1, 1]]
>            , [[3], [1, 2], [2, 1], [2, 1], [1]]
>            )
>
> edgecase' :: ([Description], [Description])
> edgecase' = ( [[1, 1], [1], [3]]
>             , [[3], [1], [1, 1]]
>             )
>
> solution :: [[Color]]
> solution =
>     [ [White, Black, Black, Black, White]
>     , [Black, White, Black, Black, Black]
>     , [Black, White, White, White, White]
>     , [Black, Black, Black, White, White]
>     , [White, Black, White, Black, White]
>     ]

[^1]: A straightforward explanation can be found in this blogpost:
      <http://blog.johantibell.com/2010/09/static-argument-transformation.html>
