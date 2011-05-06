module Main
    ( main
    ) where

import Criterion.Main

import Nonogram

main :: IO ()
main = defaultMain
    [ bgroup "sequential" (map (bench' sequentialNonogram) puzzles)
    , bgroup "parallel"   (map (bench' parallelNonogram) puzzles)
    ]
  where
    bench' f (name, rows, columns) =
        bench name $ nf (show . uncurry f) (rows, columns)
