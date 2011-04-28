module Main
    ( main
    ) where

import Criterion.Main

import Nonogram
import Puzzles

main :: IO ()
main = defaultMain $ concatMap bench' puzzles
  where
    bench' (name, rows, columns) =
        [ bench ("sequential " ++ name) $
            nf (show . uncurry sequentialNonogram) (rows, columns)
        , bench ("parallel " ++ name) $
            nf (show . uncurry parallelNonogram) (rows, columns)
        ]
