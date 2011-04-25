module Slow where

import Data.List

data Square = Blank | Cross deriving (Eq)
instance Show Square where
    show Blank = " "
    show Cross = "X"
 
-- create all possibilities of arranging the given blocks in a line of "n" elements
rows n []             = [replicate n Blank]
rows n (k:ks) | n < k = []
rows n (k:ks)         = 
    [Blank : row | row <- rows (n-1) (k:ks)] ++
    if null ks then [replicate k Cross ++ replicate (n-k) Blank]
               else [replicate k Cross ++ Blank : row | row <- rows (n-k-1) ks]
 
-- contract a given line into the block format
-- i.e. contract [Cross,Blank,Cross] == [1,1]
contract = map length . filter (\(x:_) -> x==Cross) . group
 
-- create all solutions by combining all possible rows in all possible ways
-- then pick a solution and check whether its block signature fits
solver horz vert = filter fitsVert possSolution
    where possSolution = mapM (rows (length vert)) horz
          fitsVert rs  = map contract (transpose rs) == vert
 
-- output the (first) solution
nonogram horz vert = printSolution $ head $ solver horz vert
    where printSolution = putStr . unlines . map (concatMap show) . transpose
