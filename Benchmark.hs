module Main
    ( main
    ) where

import Criterion.Main

import Nonogram
import Puzzles

main :: IO ()
main = defaultMain $ concat
    [ bench' "5x5"   puzzles_5x5
    , bench' "10x10" puzzles_10x10
    , bench' "15x15" puzzles_15x15
    , bench' "20x20" puzzles_20x20
    , bench' "25x25" puzzles_25x25
    ]
  where
    bench' name puzzles =
        [ bench ("sequential " ++ name) $
            nf (show . map (uncurry sequentialNonogram)) puzzles
        , bench ("parallel " ++ name) $
            nf (show . map (uncurry parallelNonogram)) puzzles
        ]
