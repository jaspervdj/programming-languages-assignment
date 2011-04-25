module Branch where

import Control.Arrow (first)
import Control.Monad (when, forM_, liftM2, mplus)

import Debug.Trace
import Data.IntMap (IntMap)
import qualified Data.IntMap as IM

import qualified Deduction

trace' x = traceShow x x

data Cell = White | Black
          deriving (Show, Eq)

data Partial = MustBe Cell
             | BlackArea Int
             deriving (Show, Eq)

emptyPartial :: [Partial] -> Bool
emptyPartial [] = True
emptyPartial (MustBe Black : _) = False
emptyPartial (BlackArea _ : _) = False
emptyPartial (_ : xs) = emptyPartial xs

fromDescription :: Description -> [Partial]
fromDescription = map BlackArea

type Description = [Int]

newtype Solver a = Solver
    { unSolver :: IntMap [Partial] -> Maybe (a, IntMap [Partial])
    }

instance Functor Solver where
    fmap f s = Solver (fmap (first f) . unSolver s)

instance Monad Solver where
    return x = Solver (\s -> Just (x, s))
    (Solver x) >>= f = Solver $ \s -> case x s of
        Nothing       -> Nothing
        Just (x', s') -> unSolver (f x') s'

-- | Choose the first option
--
choose :: Solver a -> Solver a -> Solver a
choose (Solver f) (Solver g) = Solver $ \s ->
    mplus (f s) (g s)

-- | Fail the current solving path
--
failSolver :: Solver a
failSolver = Solver $ const Nothing

-- Get the column descriptions
--
getPartials :: Solver (IntMap [Partial])
getPartials = Solver $ \columns -> Just (columns, columns)

updatePartials :: [Partial] -> Cell -> Maybe [Partial]
updatePartials [] White = Just []
updatePartials [] Black = Nothing
updatePartials (MustBe x : ds) y
    | x == y    = Just ds
    | otherwise = Nothing
updatePartials ds White = Just ds
updatePartials (BlackArea n : ds) Black = Just $
    replicate (n - 1) (MustBe Black) ++ (MustBe White : ds)

-- | Update a column description
--
updatePartial :: Int -> Cell -> Solver ()
updatePartial index cell = Solver $ \columns ->
    case updatePartials (columns IM.! index) cell of
        Nothing -> Nothing
        Just ds -> Just ((), IM.insert index ds columns)

solve :: Int -> Int -> [Description] -> Solver [[Cell]]

-- No more rows to do: check that all columns are empty
solve width column [] = do
    columns <- getPartials
    if all emptyPartial (map snd $ IM.toList columns) then return [[]]
                                                      else failSolver

solve width column (rowDescription : rowDescriptions) = case rowDescription of
    -- Row finished, go to next one
    [] -> do
        forM_ [column .. width - 1] $ \c -> do
            -- trace ("Setting " ++ show (length rowDescriptions, c)) $ return ()
            updatePartial c White
        rows <- solve width 0 rowDescriptions
        return $ replicate (width - column - 1) White : rows

    (l : ds) ->
        let place = do -- trace ("Place " ++ show l ++ " at " ++ show (length rowDescriptions, column)) $ do
                partials <- getPartials
                -- traceShow partials $ return ()

                when (column + l > width) failSolver
                forM_ [column .. column + l - 1] $ \c -> do
                    updatePartial c Black
                    -- trace ("updated " ++ show c) $ return ()

                when (column + l < width) $
                    updatePartial (column + l) White

                (row : rows) <-
                    solve width (column + l + 1) (ds : rowDescriptions)
                return $ (replicate l Black ++ (White : row)) : rows
            skip = do
                when (column >= width) failSolver
                updatePartial column White
                (row : rows) <-
                    solve width (column + 1) ((l : ds) : rowDescriptions)
                return $ ((White : row)) : rows
        in choose place skip

nonogram :: [Description] -> [Description] -> Maybe [[Cell]]
nonogram rows columns = fmap fst $
    unSolver (solve (length columns) 0 rows) state
  where
    state = IM.fromList (zip [0 ..] $ map fromDescription columns)

nonogram' :: [Description] -> [Description] -> IO ()
nonogram' rows columns = case nonogram rows columns of
    Nothing -> putStrLn "No solution found"
    Just g  -> mapM_ (putStrLn . concatMap cell) g
  where
    cell Black = "X"
    cell White = " "

edgecase :: ([Description], [Description])
edgecase = ( [[3], [1, 3], [1], [3], [1, 1]]
           , [[3], [1, 2], [2, 1], [2, 1], [1]]
           )

edgecase' :: ([Description], [Description])
edgecase' = ( [[1, 1], [1], [3]]
            , [[3], [1], [1, 1]]
            )

solution :: [[Cell]]
solution =
    [ [White, Black, Black, Black, White]
    , [Black, White, Black, Black, Black]
    , [Black, White, White, White, White]
    , [Black, Black, Black, White, White]
    , [White, Black, White, Black, White]
    ]
