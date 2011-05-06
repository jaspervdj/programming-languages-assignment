module Deduction where
 
import Control.Monad
import Data.List
import Data.Maybe
 
type Row s = [s]
type Grid s = [Row s]
 
-- partial information about a square
type Square = Maybe Bool
 
-- Print the first solution (if any) to the nonogram
nonogram :: [[Int]] -> [[Int]] -> String
nonogram rs cs = case solve rs cs of
        [] -> "Inconsistent\n"
        (grid:_) -> showGrid rs cs grid
 
-- All solutions to the nonogram
solve :: [[Int]] -> [[Int]] -> [Grid Bool]
solve rs cs = [grid' |
                        -- deduce as many squares as we can
                grid <- maybeToList (deduction rs cs),
                        -- guess the rest, governed by rs
                grid' <- zipWithM (rowsMatching nc) rs grid,
                        -- check each guess against cs
                map contract (transpose grid') == cs]
  where nc = length cs
        contract = map length . filter head . group
 
-- A nonogram with all the values we can deduce
deduction :: [[Int]] -> [[Int]] -> Maybe (Grid Square)
deduction rs cs = converge step init
  where nr = length rs
        nc = length cs
        init = replicate nr (replicate nc Nothing)
        step = (improve nc rs . transpose) <.> (improve nr cs . transpose)
        improve n = zipWithM (common n)
        (g <.> f) x = f x >>= g
 
-- repeatedly apply f until a fixed point is reached
converge :: (Monad m, Eq a) => (a -> m a) -> a -> m a
converge f s = do
        s' <- f s
        if s' == s then return s else converge f s'
 
-- common n ks partial = commonality between all possible ways of
-- placing blocks of length ks in a row of length n that match partial.
common :: Int -> [Int] -> Row Square -> Maybe (Row Square)
common n ks partial = case rowsMatching n ks partial of
        [] -> Nothing
        rs -> Just (foldr1 (zipWith unify) (map (map Just) rs))
  where unify :: Square -> Square -> Square
        unify x y
          | x == y = x
          | otherwise = Nothing
 
-- rowsMatching n ks partial = all possible ways of placing blocks of
-- length ks in a row of length n that match partial.
rowsMatching :: Int -> [Int] -> Row Square -> [Row Bool]
rowsMatching n [] [] = [[]]
rowsMatching n ks [] = []
rowsMatching n ks (Nothing:partial) =
        rowsMatchingAux n ks True partial ++
        rowsMatchingAux n ks False partial
rowsMatching n ks (Just s:partial) = 
        rowsMatchingAux n ks s partial
 
rowsMatchingAux :: Int -> [Int] -> Bool -> Row Square -> [Row Bool]
rowsMatchingAux n ks False partial =
        [False : row | row <- rowsMatching (n-1) ks partial]
rowsMatchingAux n [k] True partial =
        [replicate k True ++ replicate (n-k) False |
                n >= k && all (/= Just False) front && all (/= Just True) back]
  where (front, back) = splitAt (k-1) partial
rowsMatchingAux n (k:ks) True partial =
        [replicate k True ++ False : row |
                n > k+1 && all (/= Just False) front && blank /= Just True,
                row <- rowsMatching (n-k-1) ks partial']
  where (front, blank:partial') = splitAt (k-1) partial
 
showGrid :: [[Int]] -> [[Int]] -> Grid Bool -> String
showGrid rs cs ss = unlines (zipWith showRow rs ss ++ showCols cs)
  where showRow rs ss = concat [['|', cellChar s] | s <- ss] ++ "| " ++
                unwords (map show rs)
        showCols cs
          | all null cs = []
          | otherwise = concatMap showCol cs : showCols (map advance cs)
        showCol (k:_)
          | k < 10 = ' ':show k
          | otherwise = show k
        showCol [] = "  "
        cellChar True = 'X'
        cellChar False = '_'
        advance [] = []
        advance (x:xs) = xs
