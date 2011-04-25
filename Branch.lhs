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
> 
> emptyPartial :: [Partial] -> Bool
> emptyPartial [] = True
> emptyPartial (MustBe Black : _) = False
> emptyPartial (BlackArea _ : _) = False
> emptyPartial (_ : xs) = emptyPartial xs
> 
> fromDescription :: Description -> [Partial]
> fromDescription = map BlackArea

> type Partials = IntMap [Partial]

> -- | Choose the first option
> --
> choose :: Maybe a -> Maybe a -> Maybe a
> choose = mplus
> 
> updatePartials :: [Partial] -> Color -> Maybe [Partial]
> updatePartials [] White = Just []
> updatePartials [] Black = Nothing
> updatePartials (MustBe x : ds) y
>     | x == y    = Just ds
>     | otherwise = Nothing
> updatePartials ds White = Just ds
> updatePartials (BlackArea n : ds) Black = Just $
>     replicate (n - 1) (MustBe Black) ++ (MustBe White : ds)
> 
> -- | Update a column description
> --
> updatePartial :: Color -> Partials -> Int -> Maybe Partials
> updatePartial cell partials index =
>     case updatePartials (partials IM.! index) cell of
>         Nothing -> Nothing
>         Just ds -> Just $ IM.insert index ds partials
> 
> solve :: Int -> Int -> [Description] -> Partials -> Maybe Nonogram
> 
> -- No more rows to do: check that all columns are empty
> solve width column [] partials = do
>     if all emptyPartial (map snd $ IM.toList partials) then return [[]]
>                                                        else Nothing
> 
> solve width column (rowDescription : rds) partials = case rowDescription of
>     -- Row finished, go to next one
>     [] -> do
>         ps <- foldM (updatePartial White) partials [column .. width - 1]
>         rows <- solve width 0 rds ps
>         return $ replicate (width - column) White : rows
> 
>     (l : ds) ->
>         let place = do
>                 when (column + l > width) Nothing
>                 ps <- foldM (updatePartial Black) partials
>                           [column .. column + l - 1]
> 
>                 let atEnd = column + l == width
> 
>                 ps' <- if atEnd then return ps
>                                 else updatePartial White ps (column + l)
> 
>                 (row : rows) <- solve width (column + l + 1) (ds : rds) ps'
>                 return $ (replicate l Black ++ if atEnd then row else (White : row)) : rows
>             skip = do
>                 when (column >= width) Nothing
>                 ps <- updatePartial White partials column
>                 (row : rows) <- solve width (column + 1) ((l : ds) : rds) ps
>                 return $ ((White : row)) : rows
>         in choose place skip
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
