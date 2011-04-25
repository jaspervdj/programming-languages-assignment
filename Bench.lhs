> import Criterion.Main

> import qualified Nonogram
> import qualified Slow
> import qualified Deduction
> import qualified Branch

> type Puzzle = ([[Int]], [[Int]])

> main :: IO ()
> main = defaultMain
>     [ bench "small solve" $ nf (show . uncurry Branch.nonogram) small
>     , bench "large solve" $ nf (show . uncurry Branch.nonogram) large
>     , bench "example solve" $ nf (show . uncurry Branch.nonogram) example
>     -- , bench "small solve" $ nf (fmap show . solve) small
>     -- , bench "large solve" $ nf (fmap show . solve) large
>     -- , bench "large parSolve" $ nf (fmap show . parSolve) large
>     ]

> small :: Puzzle
> small =
>     ( [[2], [3], [2, 2], [2], [1, 1]]
>     , [[1, 1, 1], [1, 1], [1], [3], [4]]
>     )
> {-# NOINLINE small #-}

> large :: Puzzle
> large =
>     ( [[2], [3], [5, 1, 1], [1, 3], [1, 1, 4], [6], [1, 7], [5], [6], [3]]
>     , [[5, 1], [3], [2, 1, 1, 1], [1, 1, 1], [1, 4], [6], [8], [7], [6], [1]]
>     )
> {-# NOINLINE large #-}

> example :: Puzzle
> example =
>     ( [ [3], [5], [3, 1], [2, 1], [3, 3, 4], [2, 2, 7], [6, 1, 1], [4, 2, 2]
>       , [1, 1], [3, 1], [6], [2, 7], [6, 3, 1], [1, 2, 2, 1, 1], [4, 1, 1, 3]
>       , [4, 2, 2], [3, 3, 1], [3, 3], [3], [2, 1]
>       ]
>     , [ [2], [1, 2], [2, 3], [2, 3], [3, 1, 1], [2, 1, 1], [1, 1, 1, 2, 2]
>       , [1, 1, 3, 1, 3], [2, 6, 4], [3, 3, 9, 1], [5, 3, 2], [3, 1, 2, 2]
>       , [2, 1, 7], [3, 3, 2], [2, 4], [2, 1, 2], [2, 2, 1], [2, 2], [1], [1]
>       ]
>     )
