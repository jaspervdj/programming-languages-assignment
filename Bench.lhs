> import Criterion.Main

> import Nonogram

> main :: IO ()
> main = defaultMain
>     [ bench "small solve" $ nf (fmap show . solve) small
>     , bench "small parSolve" $ nf (fmap show . parSolve) small
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
