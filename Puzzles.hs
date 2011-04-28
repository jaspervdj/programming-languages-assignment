module Puzzles where

import Nonogram

puzzle_5x5_1 :: Puzzle
puzzle_5x5_1 = 
    ( [[2, 1], [2, 2], [2, 1], [2], [1, 2]]
    , [[3], [3, 1], [1], [2, 2], [2, 1]]
    )
{-# NOINLINE puzzle_5x5_1 #-}

puzzle_5x5_2 :: Puzzle
puzzle_5x5_2 = 
    ( [[1, 1], [1], [1, 2], [1, 3], [2, 1]]
    , [[3], [1], [1, 2], [4], [1, 1]]
    )
{-# NOINLINE puzzle_5x5_2 #-}

puzzle_5x5_3 :: Puzzle
puzzle_5x5_3 = 
    ( [[1, 1], [3, 1], [1, 1, 1], [3], [1]]
    , [[2], [1], [4], [1], [5]]
    )
{-# NOINLINE puzzle_5x5_3 #-}

puzzle_5x5_4 :: Puzzle
puzzle_5x5_4 = 
    ( [[1, 3], [2], [1, 1], [2, 1], [4]]
    , [[1, 1], [1, 2], [5], [1, 1], [1, 2]]
    )
{-# NOINLINE puzzle_5x5_4 #-}

puzzle_5x5_5 :: Puzzle
puzzle_5x5_5 = 
    ( [[2, 1], [1, 1], [1, 1, 1], [2, 2], [1, 1]]
    , [[4], [1, 1], [1, 1], [2, 1], [3]]
    )
{-# NOINLINE puzzle_5x5_5 #-}

puzzle_5x5_6 :: Puzzle
puzzle_5x5_6 = 
    ( [[4], [1, 2], [2], [3], [4]]
    , [[1], [3, 1], [1, 3], [2, 2], [1, 2]]
    )
{-# NOINLINE puzzle_5x5_6 #-}

puzzle_5x5_7 :: Puzzle
puzzle_5x5_7 = 
    ( [[1, 1], [1], [2, 1], [4], [3]]
    , [[1], [1, 3], [3], [2, 2], [1]]
    )
{-# NOINLINE puzzle_5x5_7 #-}

puzzle_5x5_8 :: Puzzle
puzzle_5x5_8 = 
    ( [[3], [1, 1], [1, 3], [4], [1]]
    , [[4], [1, 1], [5], [2], [1]]
    )
{-# NOINLINE puzzle_5x5_8 #-}

puzzle_5x5_9 :: Puzzle
puzzle_5x5_9 = 
    ( [[4], [1, 2], [1, 2], [1, 2], [3, 1]]
    , [[1, 2], [1, 1, 1], [2, 1], [4], [1, 3]]
    )
{-# NOINLINE puzzle_5x5_9 #-}

puzzle_5x5_10 :: Puzzle
puzzle_5x5_10 = 
    ( [[1, 1], [1, 3], [1, 2], [5], [1]]
    , [[4], [1], [1, 1], [4], [4]]
    )
{-# NOINLINE puzzle_5x5_10 #-}

puzzles_5x5 :: [Puzzle]
puzzles_5x5 = [puzzle_5x5_1, puzzle_5x5_2, puzzle_5x5_3, puzzle_5x5_4, puzzle_5x5_5, puzzle_5x5_6, puzzle_5x5_7, puzzle_5x5_8, puzzle_5x5_9, puzzle_5x5_10]

puzzle_10x10_1 :: Puzzle
puzzle_10x10_1 = 
    ( [[3, 1, 1], [5, 1, 1], [1, 1, 2], [1, 1, 1, 1, 1], [2, 2], [1, 5], [2, 3, 2], [1, 2, 1], [1, 3, 4], [1, 1]]
    , [[2, 1, 1, 2], [3, 1, 1], [2, 2, 1, 2], [1, 1, 1], [4, 2, 1], [3], [4], [2, 3, 1], [1, 1, 1, 1], [3, 4]]
    )
{-# NOINLINE puzzle_10x10_1 #-}

puzzle_10x10_2 :: Puzzle
puzzle_10x10_2 = 
    ( [[1, 4, 1], [2, 2, 1], [1, 2, 2], [3, 5], [2, 1, 2], [1, 4, 2], [1, 3, 1, 1], [2, 1], [4, 1], [1, 2, 2, 1]]
    , [[1, 1, 2, 2], [2, 1, 1], [5, 2], [3, 2], [4, 2], [6, 1], [1, 1, 2, 1], [1, 3, 2], [5], [3, 1, 1]]
    )
{-# NOINLINE puzzle_10x10_2 #-}

puzzle_10x10_3 :: Puzzle
puzzle_10x10_3 = 
    ( [[5, 1], [8], [1, 2, 1], [3, 1], [1, 1, 2], [1, 1], [5, 1, 2], [1, 6], [3, 1, 3], [1, 1]]
    , [[1, 1, 1, 3], [1, 1, 1], [2, 3], [4, 3], [4, 2, 1], [1, 2, 2], [2, 3], [1, 1, 3], [2, 1, 1, 1], [1, 1, 1, 1]]
    )
{-# NOINLINE puzzle_10x10_3 #-}

puzzle_10x10_4 :: Puzzle
puzzle_10x10_4 = 
    ( [[1, 1, 1], [1, 1, 3], [1, 3, 1], [1, 3], [2, 2], [3, 1, 4], [2, 1, 2], [1, 3], [2, 1, 4], [2, 4]]
    , [[2, 1], [2, 2, 1], [1, 1, 1, 1], [1, 1, 1], [4, 1], [1, 1, 1, 1], [3, 1, 3], [1, 7], [2, 7], [1, 1, 1]]
    )
{-# NOINLINE puzzle_10x10_4 #-}

puzzle_10x10_5 :: Puzzle
puzzle_10x10_5 = 
    ( [[1, 1, 1], [3, 1, 1], [1, 6], [1, 7], [6, 1], [1, 1, 4], [2, 1, 2], [3, 1], [3, 1, 1], [1, 4, 2]]
    , [[3, 1], [2, 2, 2], [1, 2, 1, 1], [4, 1], [1, 3, 1], [5, 3], [6, 1], [2, 1, 2], [6, 1], [1, 1, 2, 1]]
    )
{-# NOINLINE puzzle_10x10_5 #-}

puzzle_10x10_6 :: Puzzle
puzzle_10x10_6 = 
    ( [[3, 1, 2], [1, 2, 1], [2, 7], [4, 2], [3, 6], [1, 1, 2], [3, 1, 1, 1], [2, 1, 2], [1, 1, 2, 1], [1, 1, 1]]
    , [[1, 1, 1, 2, 1], [5, 3], [1, 4], [2, 1], [1, 3, 2, 1], [1, 2, 1], [2, 1, 1, 2], [2, 2], [1, 7], [5, 1]]
    )
{-# NOINLINE puzzle_10x10_6 #-}

puzzle_10x10_7 :: Puzzle
puzzle_10x10_7 = 
    ( [[2, 2], [1, 2, 3], [4, 4], [2, 1], [2, 1], [1, 3, 1], [1, 4, 2], [2, 1, 1, 2], [4, 4], [2, 2]]
    , [[2, 4], [1, 1, 2], [1, 1, 1, 1, 2], [1, 2, 4], [1, 1, 1], [1, 5], [4, 2], [3, 2, 1], [3, 3], [2, 1, 1]]
    )
{-# NOINLINE puzzle_10x10_7 #-}

puzzle_10x10_8 :: Puzzle
puzzle_10x10_8 = 
    ( [[4, 3], [1, 2, 1, 1], [3, 1, 1], [1, 2], [1, 1, 1], [2, 1, 2], [1, 2, 2], [5, 1, 2], [3, 1, 2], [1, 3, 1]]
    , [[1, 2, 1, 2], [3, 1, 3], [1, 1, 3], [2, 1], [1, 3], [1, 3, 1], [2, 1, 1, 1], [1, 4, 2], [1, 4], [1, 1, 2, 1]]
    )
{-# NOINLINE puzzle_10x10_8 #-}

puzzle_10x10_9 :: Puzzle
puzzle_10x10_9 = 
    ( [[3], [1, 1, 3, 1], [1, 2, 1], [2, 4], [4, 1, 2], [2, 2, 1], [4, 5], [1, 1, 1, 1], [1, 1, 2, 2], [1, 2, 1]]
    , [[2, 5], [4, 1], [4, 1, 1], [1, 1, 2, 1], [1, 2], [1, 1, 2, 1], [2, 4], [1, 1, 2], [1, 2, 1, 1], [2, 6]]
    )
{-# NOINLINE puzzle_10x10_9 #-}

puzzle_10x10_10 :: Puzzle
puzzle_10x10_10 = 
    ( [[2, 1, 1, 1], [1, 1, 3], [4, 1], [1, 2, 3], [1, 2, 2], [2, 1, 3], [2, 1, 4], [3, 2], [2, 6], [3, 1, 1, 1]]
    , [[2, 1, 1, 2], [1, 5], [2, 2, 1, 1], [1, 2, 1], [5, 2], [1, 1, 1], [1, 1, 4], [1, 7], [1, 4, 1], [3, 1, 2]]
    )
{-# NOINLINE puzzle_10x10_10 #-}

puzzles_10x10 :: [Puzzle]
puzzles_10x10 = [puzzle_10x10_1, puzzle_10x10_2, puzzle_10x10_3, puzzle_10x10_4, puzzle_10x10_5, puzzle_10x10_6, puzzle_10x10_7, puzzle_10x10_8, puzzle_10x10_9, puzzle_10x10_10]

puzzle_15x15_1 :: Puzzle
puzzle_15x15_1 = 
    ( [[1, 2, 5], [1, 3, 1, 1], [1, 1, 3, 2, 2], [4, 5], [3, 1, 2, 1, 2], [1, 1, 1, 1, 2], [1, 1, 2], [2, 4, 1], [2, 2, 2, 2, 1], [2, 2, 1, 1, 1], [4, 1, 1, 6], [4, 1, 1, 1, 1], [1, 4, 1, 4, 1], [6, 3, 1], [3, 1, 1, 1]]
    , [[3, 2, 4], [1, 6, 2], [4, 2, 5], [1, 1, 2, 5], [4, 2, 2], [1, 2, 7], [1, 1, 1, 1, 1], [1, 2, 1, 1, 1], [3, 2, 1], [1, 1, 1, 4], [6, 1, 1, 2], [1, 2, 3, 1, 1], [1, 2, 3], [6, 3, 2], [1, 1, 1, 3]]
    )
{-# NOINLINE puzzle_15x15_1 #-}

puzzle_15x15_2 :: Puzzle
puzzle_15x15_2 = 
    ( [[4, 1, 1, 3, 1], [8, 1, 3], [1, 4, 3], [1, 3, 1, 1], [7, 3, 1], [6, 2, 5], [1, 2, 1, 1, 3, 1], [3, 3, 1, 3], [1, 2, 2, 2], [1, 1, 4, 1, 2], [1, 3, 1, 2], [1, 1, 1, 1, 1], [2, 1, 2, 3, 1], [1, 3, 4, 1, 1], [2, 1, 2, 1]]
    , [[3, 3, 1, 2], [2, 2, 3, 1, 1], [2, 5, 3], [3, 4, 1], [2, 2, 2, 2], [9, 2], [4, 4, 1], [2, 1, 3, 1, 3], [2, 2, 2], [2, 5, 2], [3, 3, 2], [1, 1, 2, 1, 3], [3, 1, 2, 1, 1, 1], [1, 1, 1, 5, 1], [2, 4, 1, 1, 1]]
    )
{-# NOINLINE puzzle_15x15_2 #-}

puzzle_15x15_3 :: Puzzle
puzzle_15x15_3 = 
    ( [[1, 2, 2], [2, 1, 1, 1], [2, 1, 3, 1], [2, 1, 1, 6], [2, 3, 5, 1], [5, 1, 2, 2], [1, 1, 3, 1, 3], [1, 2, 5], [1, 1, 1, 7, 1], [2, 1, 1, 1], [7, 3, 1], [1, 4, 1, 1, 1], [4, 1, 4, 1], [1, 1, 2, 4], [2, 2, 1, 1, 1]]
    , [[1, 3, 1, 2], [2, 2, 1, 3, 1], [1, 1, 2, 3, 1, 1], [1, 1, 5], [1, 5, 2], [3, 2, 3], [1, 3, 1, 2, 2], [1, 3, 2], [1, 2], [8, 5], [1, 4, 2, 1, 2], [1, 3, 2, 4], [2, 4, 3], [4, 2, 1], [1, 4, 2, 2, 1]]
    )
{-# NOINLINE puzzle_15x15_3 #-}

puzzle_15x15_4 :: Puzzle
puzzle_15x15_4 = 
    ( [[3, 2, 2], [2, 2, 1, 1], [1, 1, 2, 1, 4], [2, 1, 2, 1, 1, 1], [1, 3, 1], [1, 1, 2, 5], [1, 1, 2, 2], [2, 1, 6, 1], [3, 1, 1, 3, 1], [4, 7], [1, 3, 1, 1], [2, 1, 7], [1, 4, 2, 2], [2, 1, 2, 3], [2, 1, 1, 1, 2]]
    , [[2, 2, 2, 1, 1], [1, 1, 3, 3], [1, 1, 3, 1], [1, 1, 1, 4], [2, 1, 1, 2, 1], [3, 1, 1, 6], [2, 2, 4], [2, 2, 6, 1], [1, 1, 2, 1, 1, 2], [3, 6], [1, 3, 1, 2], [2, 1, 3, 1, 1], [1, 3, 1, 1], [3, 1, 1, 2, 1, 1], [1, 2, 1, 1, 1, 1]]
    )
{-# NOINLINE puzzle_15x15_4 #-}

puzzle_15x15_5 :: Puzzle
puzzle_15x15_5 = 
    ( [[1, 1, 1, 1, 1, 1], [2, 4, 1, 1], [2, 4, 1, 3], [3, 1, 5], [1, 1, 3, 1, 1], [1, 1, 3, 3], [1, 3, 1, 1, 1], [1, 1, 2, 2], [1, 2, 1, 1], [1, 1, 1, 2, 1, 2], [1, 2, 1, 2, 1], [1, 5, 3], [3, 2, 1], [3, 1, 5], [2, 5, 1]]
    , [[3, 1, 1, 2, 1], [3, 1, 1, 1], [3, 1, 2, 1], [2, 1, 1, 2, 1], [2, 1, 4, 4], [4, 1, 1, 2], [2, 2, 1, 2], [1, 1, 3, 1, 2], [1, 1, 1, 1, 1, 2], [2, 2, 3, 2], [2, 1, 1, 1, 5], [3, 1, 1, 3], [4, 1], [1, 2, 2], [1, 2, 2, 1, 1]]
    )
{-# NOINLINE puzzle_15x15_5 #-}

puzzle_15x15_6 :: Puzzle
puzzle_15x15_6 = 
    ( [[1, 3, 2, 2], [3, 1, 5], [1, 1, 1, 1, 2], [1, 3, 1], [1, 1, 6], [1, 1, 6, 2], [2, 4, 1, 1], [2, 2, 3, 1], [3, 4, 1], [1, 1, 5, 1], [2, 4, 1, 2], [1, 1, 1], [1, 1, 1, 6], [1, 3, 3, 2, 1], [1, 2, 5]]
    , [[1, 4, 1, 2], [1, 1, 3, 1, 1], [1, 1, 1, 1], [1, 1, 1], [3, 1, 3], [2, 3, 1, 1], [1, 11], [1, 2, 1, 1, 1], [1, 4, 3, 1], [1, 4, 3, 1], [2, 2, 1, 2, 1, 1], [2, 1, 2, 1, 3], [3, 1, 1, 3], [2, 5, 3, 1], [1, 1, 1, 2, 3]]
    )
{-# NOINLINE puzzle_15x15_6 #-}

puzzle_15x15_7 :: Puzzle
puzzle_15x15_7 = 
    ( [[2, 3, 2, 2], [3, 9], [2, 5, 2], [1, 1, 1, 6, 1], [3, 4], [1, 1, 2, 1, 2, 1], [2, 1, 1, 1], [3, 4], [1, 1, 5, 2], [2, 1, 6], [1, 1, 3, 2], [1, 1, 6], [3, 1, 1, 2, 1], [1, 3, 1, 1, 2], [2, 2, 2, 1]]
    , [[1, 1, 1, 2, 1, 1], [3, 1, 2, 1], [3, 2], [1, 1, 2, 1], [1, 3, 2, 1, 1], [3, 1, 3, 1, 2], [3, 2, 2, 2], [3, 2, 1, 3, 1], [4, 4], [2, 4, 4, 1], [1, 2, 1, 2, 1], [1, 12], [2, 3, 5], [3, 1, 1, 2], [2, 1, 1, 2]]
    )
{-# NOINLINE puzzle_15x15_7 #-}

puzzle_15x15_8 :: Puzzle
puzzle_15x15_8 = 
    ( [[1, 1, 2, 1, 1], [2, 2, 1, 3], [1, 5, 3], [3, 2, 1, 1], [1, 11], [1, 1, 1, 1, 2], [1, 2, 3, 3, 2], [1, 1, 1, 3], [1, 3, 6], [4, 3, 1, 2], [1, 1, 2, 1, 1], [1, 3], [2, 1, 1, 1], [8, 2, 2], [3, 1, 3, 1]]
    , [[1, 7, 2], [3, 1, 3], [2, 3, 2], [1, 1, 1, 2, 2], [5, 1, 2, 1], [4, 1, 1, 1], [6, 1, 2], [3, 1, 1, 2, 3], [1, 2, 3, 1, 1], [3, 1, 1, 1, 2], [1, 1, 5, 2], [8], [2, 1, 2, 1], [1, 4, 2, 1], [1, 2, 1, 3]]
    )
{-# NOINLINE puzzle_15x15_8 #-}

puzzle_15x15_9 :: Puzzle
puzzle_15x15_9 = 
    ( [[2, 1, 1, 1, 1], [2, 1, 3, 1], [2, 1, 1, 2, 2], [1, 6, 3], [6, 2, 1], [1, 3, 2], [1, 1, 1, 1, 1, 3], [1, 5, 1, 2, 1], [1, 2, 1, 5], [1, 1, 2, 1], [5, 3, 1], [1, 1, 1, 2, 1], [3, 1, 1], [2, 2, 1, 1], [6, 1, 1, 2]]
    , [[1, 1, 2, 1], [3, 1, 2], [1, 1, 1, 5, 2], [3, 1, 1, 1, 1], [2, 3, 1, 3], [5, 2, 5], [1, 3, 1, 1, 1], [6, 1, 1], [2, 1, 1, 4, 1], [1, 1, 1, 3, 1], [3, 2, 2], [3, 2, 1, 1], [1, 1, 2, 1], [1, 2, 1, 2], [1, 1, 1, 2, 3, 1]]
    )
{-# NOINLINE puzzle_15x15_9 #-}

puzzle_15x15_10 :: Puzzle
puzzle_15x15_10 = 
    ( [[1, 1, 2, 1, 1], [1, 2, 1, 2, 1, 3], [3, 2], [2, 1, 1, 1], [5, 1, 4, 1], [1, 2, 2, 1], [3, 1, 4, 1], [6, 1, 5], [2, 1, 1, 2, 1], [3, 1, 1, 3], [1, 1, 1, 4, 2], [1, 1, 2, 1, 1, 1], [1, 2, 1, 1], [1, 3, 2, 1], [2, 1, 1, 4]]
    , [[3, 2, 4], [1, 1, 3, 1], [2, 1, 1, 1, 1], [1, 1, 2, 1, 3], [3, 4, 1, 2], [3, 3, 1, 2], [1, 2, 2, 1], [1, 1, 4, 1], [2, 2, 1, 1], [1, 5, 3], [1, 1, 5, 2], [1, 11], [1, 2, 1], [2, 2, 1, 2, 2], [1, 1, 1, 1, 1]]
    )
{-# NOINLINE puzzle_15x15_10 #-}

puzzles_15x15 :: [Puzzle]
puzzles_15x15 = [puzzle_15x15_1, puzzle_15x15_2, puzzle_15x15_3, puzzle_15x15_4, puzzle_15x15_5, puzzle_15x15_6, puzzle_15x15_7, puzzle_15x15_8, puzzle_15x15_9, puzzle_15x15_10]

puzzle_20x20_1 :: Puzzle
puzzle_20x20_1 = 
    ( [[1, 1, 1, 1, 3, 3, 1, 1], [4, 1, 2, 2, 3], [2, 4, 1, 2, 1], [1, 5, 4], [3, 1, 1, 2], [1, 1, 1, 1, 3, 3], [4, 2, 2, 1], [1, 5, 2, 2], [2, 2, 4], [3, 1, 2, 6], [1, 1, 1, 1, 4], [2, 1, 1, 2, 1, 1], [2, 1, 1, 5, 1, 1], [3, 1, 3, 2], [3, 1, 6, 4], [2, 5, 3, 1, 2], [3, 5, 3], [3, 1, 1, 2, 1, 3], [2, 3, 1, 2, 4], [2, 1, 2, 1, 2, 2]]
    , [[2, 2, 1, 1, 2, 3], [1, 1, 1, 9], [2, 2, 2, 1, 2, 2], [1, 3, 1, 2, 1], [1, 1, 1, 1], [4, 1, 2, 2], [1, 2, 1, 3, 2], [1, 1, 1, 6, 2], [3, 3, 2, 5], [1, 3, 2, 8], [4, 1, 1, 1, 1, 3, 1], [3, 1, 2, 1, 1], [1, 4, 2, 1, 2], [4, 2, 5, 3], [2, 1, 2, 3, 1], [2, 1, 4, 1, 1, 2], [2, 6, 3, 1], [1, 2, 1, 4, 3], [2, 2, 1, 3], [1, 3, 1, 1, 1, 3]]
    )
{-# NOINLINE puzzle_20x20_1 #-}

puzzle_20x20_2 :: Puzzle
puzzle_20x20_2 = 
    ( [[3, 3, 6, 1], [4, 1, 1, 1, 1, 3], [1, 3, 1, 1, 2, 3], [2, 1, 2, 2, 2, 1, 2], [2, 4, 2, 4], [2, 2, 3, 2, 1, 3], [2, 1, 4, 1, 1], [1, 2, 1, 4], [1, 3, 1, 2, 1, 2], [2, 2, 2, 3, 5], [1, 1, 1, 1], [1, 2, 2, 2], [3, 4, 2, 1, 2], [2, 1, 2, 1, 3], [2, 2, 4, 2, 2, 1], [2, 4, 3, 3, 2], [1, 3, 2, 1, 3], [1, 2, 1, 1, 2, 1, 1], [2, 4, 2, 2, 1], [1, 3, 1, 3, 1]]
    , [[5, 3, 1], [7, 7, 1], [2, 2, 1, 1, 2], [2, 4, 1, 3, 1], [5, 2, 2, 3], [1, 1, 2, 1, 5], [2, 4, 6, 1], [1, 4, 1, 1, 4], [4, 3, 1, 1, 2], [1, 5, 1, 4], [3, 1, 1, 1, 2, 1], [1, 3, 3, 4, 2], [1, 1, 1, 2, 1, 4], [2, 2, 2, 1, 1, 1], [1, 3, 1, 1, 2, 3], [1, 1, 3, 1, 2, 1], [1, 2, 1, 2, 2, 1], [3, 1, 2, 2, 2], [3, 1, 2, 1, 1, 1], [4, 1, 2, 1, 1, 2]]
    )
{-# NOINLINE puzzle_20x20_2 #-}

puzzle_20x20_3 :: Puzzle
puzzle_20x20_3 = 
    ( [[1, 3, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1], [3, 2, 1, 1, 1], [1, 2, 4, 1, 1, 1], [2, 1, 3, 3], [5, 1, 5], [1, 4, 2, 2, 1], [1, 1, 1, 2, 1, 1, 1], [3, 4, 3], [2, 4, 1, 2, 1], [1, 1, 1, 2, 1, 1, 2, 1], [2, 4, 2, 2, 1, 1], [3, 2, 1, 1, 1, 1, 1], [6, 1, 1, 3], [5, 4, 2, 2], [2, 2, 1, 5, 2, 1], [1, 1, 2, 1, 1, 3, 1], [2, 1, 4, 2, 2], [1, 1, 4, 5, 2, 1], [1, 7, 3, 2]]
    , [[1, 1, 1, 3, 2, 2], [3, 1, 2, 2, 1], [1, 2, 3, 4], [2, 1, 2, 1, 2, 1], [1, 2, 1, 1, 5, 2], [3, 3, 2, 6, 2], [1, 2, 2, 1, 1, 3], [1, 3, 5, 4, 2], [3, 1, 3, 1, 1, 1], [1, 1, 1, 6], [2, 3, 2, 2, 2], [1, 1, 1, 3, 4], [2, 2, 1, 1, 2, 2], [1, 3, 2, 3, 2], [2, 1, 2, 1, 3], [4, 2, 1, 2], [1, 2, 1, 1, 1, 1, 1], [5, 1, 4, 2], [2, 1, 1, 2, 1, 1], [1, 1, 1, 3, 1, 1, 2]]
    )
{-# NOINLINE puzzle_20x20_3 #-}

puzzle_20x20_4 :: Puzzle
puzzle_20x20_4 = 
    ( [[2, 3, 4, 1, 2, 1], [2, 1, 1, 2, 1, 1, 1, 2], [1, 2, 2, 1, 4], [1, 2, 2, 2, 1, 2, 2], [3, 1, 1, 6, 1], [1, 3, 2, 1, 1], [5, 1, 2, 1], [4, 2, 1, 1, 3], [3, 2, 2, 1, 2], [2, 3, 1, 1, 1], [1, 1, 2, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2, 3], [2, 2, 3, 1, 1], [2, 1, 2, 4, 1, 1], [1, 1, 1, 2, 1, 1, 1], [1, 1, 1, 1, 2], [3, 4, 1, 4, 3], [2, 3, 2, 1, 1, 3], [4, 1, 3, 5], [1, 5, 2, 3]]
    , [[3, 4, 3, 2], [2, 2, 8, 2], [1, 1, 3, 2, 1], [1, 3, 2, 2, 2, 3], [1, 1, 2, 1, 1, 4], [2, 1, 1, 2, 3], [1, 1, 1, 3, 1], [2, 1, 2, 2, 1, 1], [1, 1, 2, 2, 3, 3], [4, 3, 2, 2, 1], [2, 1, 2, 4, 1, 2], [1, 4, 1, 1, 4], [1, 1, 1, 1, 2, 1, 2], [2, 1, 1, 2, 2, 1], [2, 1, 1, 1, 1, 1, 1, 1], [3, 1, 1, 3, 1], [5, 3, 1, 4], [1, 1, 1, 1, 1, 1, 4], [4, 1, 2, 1, 4], [2, 1, 1, 2, 1]]
    )
{-# NOINLINE puzzle_20x20_4 #-}

puzzle_20x20_5 :: Puzzle
puzzle_20x20_5 = 
    ( [[7, 2], [1, 1, 1, 1, 1, 4, 1, 2], [1, 1, 3, 2, 1, 2], [1, 1, 1, 2, 1, 2], [2, 1, 3, 1, 1, 1, 1], [1, 2, 2, 4, 1, 1], [3, 1, 1, 1, 2, 1], [5, 4, 3, 1], [3, 4, 1, 2, 3], [1, 3, 3, 1, 1], [1, 1, 1, 1], [1, 1, 6, 2, 1], [3, 2, 5, 2], [1, 3, 1, 2, 1, 2, 1], [3, 2, 1, 1, 3], [3, 2, 2, 2], [4, 2, 5], [2, 1, 3, 1, 5], [1, 1, 1, 3, 1, 1, 3], [2, 1, 7, 2, 1]]
    , [[5, 1, 2, 1], [1, 2, 1, 4], [2, 4], [8, 6, 2], [4, 2, 1, 1], [2, 3, 2, 2], [2, 1, 1, 2, 3, 1, 1], [3, 3, 2, 2, 4, 1], [1, 1, 1, 3, 2, 1], [9, 2, 1, 2], [1, 2, 1, 2, 1, 1, 1, 2], [2, 4, 1, 3, 1, 2], [2, 1, 3, 2, 4], [2, 1, 1, 1, 2, 2], [3, 1, 1, 1, 2, 1], [7, 1, 2], [1, 4, 1, 2, 1], [1, 1, 3, 1, 2], [6, 1, 1, 1, 3], [2, 3, 3, 1, 1]]
    )
{-# NOINLINE puzzle_20x20_5 #-}

puzzle_20x20_6 :: Puzzle
puzzle_20x20_6 = 
    ( [[1, 2, 2, 2, 2], [1, 1, 1, 1, 1, 1, 4], [1, 1, 1, 1, 1, 1], [1, 2, 1, 3, 5], [1, 4, 1, 1, 2], [1, 1, 7, 1, 1], [5, 2, 1, 1], [2, 2, 3, 1, 1, 3], [3, 2, 4, 1, 2], [5, 1, 1, 3, 1, 2], [1, 2, 4, 2, 1], [3, 2, 1, 1, 2, 1, 1], [2, 2, 1, 2, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 2], [3, 2, 1, 6, 3], [1, 4, 1, 2, 1, 1], [1, 1, 1, 2, 2, 1, 1], [3, 1, 2, 3, 1, 3], [3, 1, 1, 4, 1], [1, 2, 1, 1, 1, 2]]
    , [[1, 2, 1, 1, 3, 1, 1], [1, 1, 2, 3, 1, 2], [3, 2, 1, 1, 3], [4, 4, 2, 2, 2], [10, 2, 2], [1, 1, 2, 4], [1, 2, 1, 1, 2], [2, 8, 3, 2], [4, 2, 4], [2, 2, 1, 1, 3, 1], [1, 1, 4, 1, 1], [2, 1, 2, 3, 1], [2, 1, 2, 2, 1, 1, 4], [1, 2, 2, 4, 1], [1, 1, 1, 2, 2], [1, 1, 1, 1, 1, 1, 1, 1], [5, 2, 1, 1, 1], [1, 1, 4, 2, 2, 3], [1, 2, 3, 5, 1], [4, 1, 4, 1]]
    )
{-# NOINLINE puzzle_20x20_6 #-}

puzzle_20x20_7 :: Puzzle
puzzle_20x20_7 = 
    ( [[1, 2, 1, 1, 1, 1, 3], [2, 1, 2, 1, 2, 2], [1, 1, 1, 4, 1], [1, 3, 1, 3, 1], [4, 1, 2, 1, 1, 4], [2, 1, 4, 1, 1], [1, 2, 2, 2, 2, 2, 1], [1, 3, 1, 2, 2, 1], [3, 6, 3, 3], [1, 2, 1, 1, 2, 3], [1, 1, 7], [5, 1, 2, 3, 1], [2, 1, 2, 1, 2, 1, 1], [2, 2, 1, 1, 5], [3, 1, 1, 1, 1, 1, 1, 1], [2, 1, 3, 1, 2], [3, 1, 2, 2, 3], [1, 7, 2, 1], [1, 5, 5, 3, 1], [2, 5, 3, 4]]
    , [[2, 1, 2, 2, 3], [4, 1, 2, 1, 2, 1, 1], [1, 1, 2, 2, 1, 4], [1, 2, 2, 1, 2, 1, 2], [3, 5, 1, 1, 1, 2], [1, 1, 1, 1, 4, 3], [1, 1, 1, 1, 4], [2, 4, 4, 1, 1], [1, 1, 1, 1, 5], [1, 5, 1, 1, 2], [1, 1, 2, 1, 1], [1, 1, 1, 2, 1, 1, 1, 1], [5, 1, 4, 2, 2], [2, 1, 6, 1, 1, 1, 1], [2, 2, 1, 3, 2, 1, 1], [1, 1, 1, 4, 1], [3, 3, 4, 4, 2], [3, 1, 5, 1, 1, 2], [2, 2, 4, 1], [1, 3, 3, 1, 3]]
    )
{-# NOINLINE puzzle_20x20_7 #-}

puzzle_20x20_8 :: Puzzle
puzzle_20x20_8 = 
    ( [[3, 3, 2, 4], [6, 3, 1, 1], [5, 3, 1], [4, 2, 2, 2, 1], [1, 2, 2, 1, 1, 3], [3, 1, 1, 2, 3, 2], [1, 1, 3, 1, 1], [1, 3, 6], [3, 1, 2, 3, 1], [2, 1, 1, 1, 1], [1, 1, 3, 1, 2], [7, 3, 1, 3], [2, 2, 4, 1, 1], [2, 3, 1, 1, 1, 1, 1], [1, 3, 1, 2, 1, 1, 2], [5, 1, 1, 1, 2], [1, 4, 1, 1, 1, 1, 1], [2, 1, 2, 3, 3], [1, 1, 1, 3, 1], [1, 3, 1, 1, 1, 3, 1]]
    , [[1, 3, 2, 1], [1, 2, 1, 2, 4, 1], [1, 7, 1, 1, 1], [3, 5, 1, 1], [1, 1, 1, 9, 1], [4, 1, 1, 1, 4, 1], [2, 3, 1, 2, 2], [2, 1, 1, 3, 1], [3, 3, 2, 2, 1], [3, 3, 1, 2, 3], [1, 1, 3, 4, 1], [1, 1, 2, 1, 1, 1], [1, 3, 1, 3, 1], [2, 1, 1, 2, 2, 2, 1, 1], [2, 5, 3], [2, 2, 1, 2, 3], [2, 1, 1, 1, 2], [1, 2, 1, 1, 2, 2, 1], [2, 4, 1, 1], [3, 1, 1, 2, 1, 4]]
    )
{-# NOINLINE puzzle_20x20_8 #-}

puzzle_20x20_9 :: Puzzle
puzzle_20x20_9 = 
    ( [[3, 3, 2, 2, 1], [1, 2, 1, 2], [3, 5, 3, 1], [3, 2, 1], [3, 6, 1, 1, 1, 2], [1, 2, 1, 3, 2, 1], [1, 1, 1, 1, 4, 1], [3, 6, 3, 1], [5, 1, 1, 3], [1, 4, 3, 1], [1, 2, 1, 1, 1, 2, 1], [4, 2, 3, 2, 1], [2, 6, 3, 1], [1, 1, 2, 2, 1, 5], [3, 1, 2, 5], [1, 1, 3, 2, 2, 2], [2, 1, 4, 1], [5, 2, 3, 3], [1, 5, 3, 1, 1], [1, 1, 2, 1, 1, 4]]
    , [[3, 1, 1], [3, 1, 1, 2, 1, 3], [1, 4, 11], [4, 4, 2, 1], [1, 2, 1, 2, 1, 2, 1], [3, 3, 2, 1, 2], [1, 1, 1, 2, 2, 1, 2], [1, 1, 1, 1, 5, 2], [1, 1, 1, 1, 2, 2, 4], [2, 1, 2, 2, 2, 2], [1, 1, 1, 1, 1, 1, 1, 1, 1], [2, 4, 5, 3], [2, 1, 1, 1, 1, 1, 3], [1, 1, 1, 2, 3], [1, 1, 1, 2, 2], [1, 3, 5, 1], [1, 1, 3, 2, 2, 3], [1, 6, 1, 3, 1, 1], [1, 1, 1, 3, 2], [1, 1, 4, 2, 1, 1]]
    )
{-# NOINLINE puzzle_20x20_9 #-}

puzzle_20x20_10 :: Puzzle
puzzle_20x20_10 = 
    ( [[2, 3, 2, 2, 1], [1, 3, 2, 2, 2, 1], [3, 1, 1, 3, 1, 1], [2, 1, 1, 1, 1, 3], [1, 2, 1, 4, 1, 2], [4, 2, 1, 3], [1, 1, 3, 1, 1, 1, 1], [1, 2, 3, 3, 1, 2], [2, 4, 3, 2, 1], [1, 2, 7, 1, 3], [3, 2, 4, 1], [1, 1, 1, 1, 1, 3, 1], [1, 3, 1, 1, 2], [1, 2, 2, 1, 7, 1], [6, 6, 2, 1], [3, 2, 2], [2, 3, 2, 3], [1, 1, 1, 2, 2, 4], [1, 2, 1, 1, 2], [1, 2, 1, 1, 2]]
    , [[1, 1, 1, 2, 2, 1, 2], [1, 1, 1, 1, 1, 2, 2], [1, 2, 1, 1, 3, 1, 1], [5, 2, 3, 1], [2, 2, 2, 3, 1], [4, 7, 3, 1], [2, 1, 1, 3, 1, 5], [2, 1, 2, 3, 1], [2, 2, 1, 2, 1, 1], [3, 2, 5, 6], [3, 4, 3, 1], [1, 1, 1, 1, 3, 3, 1], [2, 1, 1, 1, 2, 3], [3, 2, 1, 1], [1, 3, 2, 1], [3, 2, 1, 1, 2, 1, 2], [1, 1, 1, 1, 1, 3, 4], [1, 2, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 2, 5, 1]]
    )
{-# NOINLINE puzzle_20x20_10 #-}

puzzles_20x20 :: [Puzzle]
puzzles_20x20 = [puzzle_20x20_1, puzzle_20x20_2, puzzle_20x20_3, puzzle_20x20_4, puzzle_20x20_5, puzzle_20x20_6, puzzle_20x20_7, puzzle_20x20_8, puzzle_20x20_9, puzzle_20x20_10]

puzzle_25x25_1 :: Puzzle
puzzle_25x25_1 = 
    ( [[2, 1, 1, 1, 1, 1, 2, 2], [2, 2, 1, 1, 2, 1, 5], [2, 1, 1, 5, 1, 1, 1], [3, 1, 4, 2, 3, 1, 1], [1, 2, 3, 2, 5, 1], [14, 2, 1, 1], [1, 3, 1, 1, 7, 1], [1, 1, 3, 1, 2, 1, 2, 1], [3, 1, 2, 1, 2, 1, 1, 1], [2, 1, 2, 4, 1, 4], [4, 3, 2, 1, 1, 2, 2], [1, 1, 1, 1, 1, 2, 1, 1, 1], [8, 6, 1, 2, 1], [8, 1, 1, 3, 1], [1, 1, 1, 4, 8, 1], [1, 4, 2, 1, 2, 1, 1], [3, 1, 1, 1, 2, 1, 2], [3, 3, 2, 4, 1, 2], [2, 1, 1, 2, 7], [1, 5, 2, 1, 3], [2, 3, 2, 1, 3], [1, 1, 2, 1, 2, 6, 2], [1, 1, 1, 7, 2, 1], [2, 1, 2, 1, 2, 1], [1, 1, 2, 1, 5, 1, 5, 1]]
    , [[1, 2, 1, 3, 1], [4, 2, 3, 2, 2, 3], [4, 1, 8, 1, 1, 2], [3, 1, 2, 1, 1, 2], [1, 1, 1, 7, 1, 1, 1], [2, 3, 2, 1, 1, 4, 1], [2, 5, 8, 3], [6, 2, 1, 2], [1, 3, 1, 3, 2, 2, 2], [6, 1, 2, 4, 1, 1], [3, 2, 1, 3, 2, 1, 1], [2, 1, 1, 1, 1, 1, 1, 1, 1], [2, 6, 2, 1], [6, 1, 2, 1, 1, 4], [4, 1, 3, 4, 1, 2], [2, 1, 1, 2, 2, 1, 3, 2], [1, 1, 2, 6, 1, 1], [1, 5, 2, 1, 2, 1, 3], [2, 5, 1, 1, 1, 7], [3, 4, 3, 4, 2, 1], [1, 2, 6, 1, 2, 2], [1, 1, 5, 1, 2, 1, 2], [2, 2, 1, 1, 1, 1, 1, 1], [2, 1, 1, 2, 3, 4], [3, 1, 1, 4, 2, 1]]
    )
{-# NOINLINE puzzle_25x25_1 #-}

puzzle_25x25_2 :: Puzzle
puzzle_25x25_2 = 
    ( [[2, 3, 2, 1, 1, 1], [2, 1, 3, 3, 5, 2], [4, 1, 1, 2, 1, 3, 4], [1, 1, 2, 1, 1, 3, 1], [3, 1, 5, 1, 2, 2], [1, 1, 2, 1], [2, 5, 1, 2, 1], [3, 4, 3, 2], [1, 3, 1, 3, 2, 3, 2], [1, 1, 1, 1, 2, 1, 1], [1, 1, 2, 6, 3], [2, 6, 1, 1, 2, 2], [1, 2, 1, 3, 1, 1, 1, 1, 2], [3, 1, 1, 2, 1, 2, 1, 3], [1, 1, 1, 2, 1, 1, 3, 1], [1, 8, 2, 1, 1, 1], [1, 2, 1, 1, 1, 6, 1], [1, 1, 1, 1, 1, 1, 3, 4, 1], [3, 2, 2, 2, 3, 1], [2, 1, 1, 2, 1, 1, 1, 2], [2, 2, 4, 1, 4], [1, 1, 1, 1, 1, 5, 1, 1, 1], [2, 2, 1, 2, 5, 2], [1, 4, 6, 4], [3, 3, 1, 1, 2, 1]]
    , [[2, 2, 1, 2, 1, 2], [3, 1, 1, 2, 1, 1, 1, 1, 1, 1], [1, 1, 1, 4, 6, 1], [4, 2, 1, 2, 1, 1], [1, 1, 2, 3, 3, 1, 1], [1, 1, 3, 3, 1, 1, 1, 1], [2, 2, 1, 1, 1, 2], [7, 3, 1, 1, 3], [1, 1, 1, 1, 1, 5], [2, 1, 3, 1, 1, 1, 2], [8, 6, 1, 3], [1, 2, 6, 1, 3, 2], [4, 2, 1, 1, 7], [1, 1, 1, 1, 1, 1, 1, 4], [3, 1, 3, 1, 1], [1, 3, 1, 4, 2, 3, 2], [1, 1, 4, 3, 1, 2, 1], [2, 1, 2, 1, 1, 1], [4, 5, 3, 3, 2, 1], [3, 3, 1, 1, 3, 2], [2, 1, 3, 1, 4, 1, 1, 1], [1, 1, 1, 1, 1, 2], [2, 1, 6, 5], [4, 3, 4, 1, 3, 1], [1, 1, 1, 1, 1, 1, 2, 1]]
    )
{-# NOINLINE puzzle_25x25_2 #-}

puzzle_25x25_3 :: Puzzle
puzzle_25x25_3 = 
    ( [[1, 1, 4, 1, 1, 1, 3], [1, 3, 1, 1, 2, 2, 2, 1], [1, 2, 2, 2, 2, 2, 1, 1], [1, 1, 2, 4, 1, 3, 1], [3, 1, 1, 1, 1, 1, 1, 1], [1, 4, 3, 2, 1, 1, 3], [1, 3, 3, 2, 1, 2, 1], [1, 1, 2, 3, 3, 1], [4, 1, 1, 1, 1, 3, 3], [1, 2, 2, 2, 2, 1, 2], [3, 1, 1, 3, 5], [4, 1, 1, 5, 2, 1], [2, 1, 1, 2, 2, 1, 1], [2, 1, 7, 1, 2], [1, 4, 1, 1, 4, 3], [2, 1, 2, 4, 1, 3, 2, 1], [1, 1, 5, 2], [1, 2, 1, 2, 2, 2, 1, 3], [1, 3, 1, 5, 1, 3, 2], [3, 1, 3, 1, 1, 1, 1, 1], [1, 1, 2, 1, 1, 6], [1, 2, 1, 4, 1, 5, 1, 1], [1, 2, 3, 1, 1, 8, 1], [3, 1, 1, 1, 1, 2], [1, 2, 1, 1, 2, 2, 1]]
    , [[1, 1, 3, 1, 1, 3, 1, 2], [1, 2, 3, 1, 2, 1, 2], [1, 2, 1, 2, 2, 3, 1, 2], [5, 6, 4, 3, 1], [2, 2, 2, 1, 1, 2], [2, 3, 1, 2, 1, 1], [1, 1, 1, 1, 2, 1, 3, 1], [5, 1, 1, 1, 1], [1, 1, 2, 7, 1, 2], [2, 3, 2, 1, 1, 5], [2, 2, 1, 1, 2, 3, 1], [1, 2, 1, 2, 1, 1, 1], [1, 1, 4, 1, 3, 1, 3, 2], [1, 1, 2, 1, 1, 4, 1], [1, 1, 1, 3, 1, 2, 1], [2, 1, 10, 1, 4], [2, 2, 1, 3, 1, 2, 1], [4, 3, 5, 2, 3, 1], [4, 1, 3, 1, 1, 4], [1, 2, 1, 3, 6, 1], [1, 2, 3, 3, 1, 3], [2, 1, 2, 2, 8], [1, 1, 1, 3, 1, 2, 1, 1], [3, 2, 2, 3, 1, 1, 2], [1, 4, 1, 2]]
    )
{-# NOINLINE puzzle_25x25_3 #-}

puzzle_25x25_4 :: Puzzle
puzzle_25x25_4 = 
    ( [[4, 1, 4, 3], [3, 1, 2, 4, 2], [2, 1, 1, 1, 3, 2, 1], [1, 2, 3, 1, 1, 1, 1], [4, 2, 1, 2], [2, 2, 1, 1, 1, 1, 2], [1, 2, 5, 1, 1], [1, 2, 3, 3, 8], [3, 3, 3, 6, 2, 1], [4, 5, 2, 3, 1], [3, 5, 4, 4, 1], [1, 1, 2, 2, 2, 1, 1, 1], [2, 1, 2, 1, 1, 1, 1, 6], [2, 1, 6, 2, 1, 1, 1], [1, 2, 1, 2, 1, 1, 6], [2, 2, 3, 1, 1, 4, 2], [1, 1, 3, 2, 1, 1, 2], [2, 1, 2, 1, 1, 5], [1, 2, 1, 1, 1, 1, 3], [2, 1, 8, 1, 1, 3], [1, 3, 3, 1, 1, 1], [2, 3, 1, 1, 3, 1, 2, 2], [1, 5, 2, 1, 1, 1], [3, 1, 3, 2, 1, 1, 1], [2, 2, 3, 1, 1, 1, 1]]
    , [[1, 1, 3, 1, 4, 2, 3, 1], [1, 4, 2, 1, 3, 1, 1, 2], [1, 1, 1, 2, 2, 1, 1], [3, 1, 1, 3, 1, 4], [1, 6, 1, 1, 3, 1], [2, 1, 1, 5, 1, 2, 6], [3, 3, 3, 1, 1, 1, 1], [1, 1, 2, 1, 2, 2, 4], [1, 3, 2, 2, 3, 1, 2], [3, 3, 1, 7, 1, 1], [2, 1, 9, 2, 1], [1, 1, 3, 1, 3, 1], [1, 1, 1, 2, 2, 2, 6], [1, 1, 3, 2, 2, 4, 2], [1, 4, 2, 1, 2], [1, 3, 3, 1, 3], [2, 1, 1, 1, 3, 2, 1], [4, 3, 1, 1, 1, 2, 1], [2, 4, 5, 1, 1], [3, 1, 1, 1, 1, 2, 1, 1, 1], [1, 2, 1, 2, 1, 1, 1], [1, 2, 3, 1, 1, 1], [1, 5, 2, 2, 2, 1], [1, 1, 1, 1, 1, 1, 3, 2], [1, 3, 3, 1, 2, 1]]
    )
{-# NOINLINE puzzle_25x25_4 #-}

puzzle_25x25_5 :: Puzzle
puzzle_25x25_5 = 
    ( [[3, 2, 1, 1, 2, 4, 1], [1, 1, 1, 1, 4, 3, 1], [1, 1, 3, 4, 1, 3, 1, 1], [1, 2, 1, 2, 4, 5], [3, 2, 1, 5, 1, 1, 1, 1], [4, 1, 4, 5, 1], [1, 1, 1, 2, 3], [1, 2, 2, 7, 1, 3], [1, 1, 1, 1, 2, 1, 1, 2, 1], [1, 1, 1, 2, 2, 1, 3, 1, 1], [2, 2, 1, 1, 2, 2, 1, 2], [1, 1, 3, 2, 1, 3], [1, 2, 1, 3, 1, 1, 2, 2], [1, 2, 2, 3, 1, 2, 1, 2], [1, 2, 3, 1, 1, 1, 1], [1, 3, 2, 1, 5, 1], [4, 2, 1, 1, 2, 1, 1], [2, 1, 1, 3, 1, 2], [3, 1, 1, 2, 3, 1, 4], [1, 8, 1, 1, 1, 1], [2, 3, 2, 1, 1, 3], [1, 1, 3, 1, 3, 1, 1, 3], [2, 1, 4, 1, 1, 3], [1, 2, 2, 3, 1, 1], [2, 1, 1, 4, 1, 4, 1]]
    , [[1, 1, 3, 2, 4, 2], [3, 2, 3, 4, 1], [1, 2, 2, 2, 1, 3, 1], [2, 1, 4, 3, 1], [1, 6, 1, 2], [4, 1, 1, 4, 4], [3, 1, 1, 2, 2, 3, 2], [3, 1, 1, 3, 3, 4], [1, 2, 3, 3, 1, 1, 3], [1, 1, 1, 1, 2, 5], [2, 2, 2, 1, 1, 1, 1, 1], [1, 4, 1, 2, 1, 1, 1, 1, 1], [4, 2, 1, 1, 1, 1, 1, 2], [2, 1, 4, 3, 1, 4], [2, 2, 1, 2, 1, 2, 1, 1], [2, 1, 1, 1, 1, 1, 1, 2], [2, 7, 2, 1, 6], [1, 1, 1, 1, 2, 4, 2], [3, 2, 2, 1, 2, 1], [3, 1, 2, 3, 2, 1, 1, 1, 1], [4, 1, 1, 1, 1, 1, 3], [1, 1, 4, 1, 5, 1], [1, 3, 2, 2, 1, 5, 1], [1, 4, 4, 1, 1, 2, 1], [5, 1, 1, 1, 1]]
    )
{-# NOINLINE puzzle_25x25_5 #-}

puzzle_25x25_6 :: Puzzle
puzzle_25x25_6 = 
    ( [[2, 6, 3, 1, 2, 2], [2, 1, 1, 2, 1, 1, 3], [2, 1, 2, 2, 2, 3, 5], [1, 2, 1, 1, 1, 2], [1, 3, 2, 1, 3, 2, 2], [1, 10, 2, 2, 1, 2], [1, 4, 6, 2, 4], [1, 1, 1, 1, 2, 3, 1, 3], [1, 3, 2, 1, 1, 2, 3, 1], [2, 4, 1, 1, 1, 3, 1], [1, 1, 1, 1, 1, 3, 2], [3, 1, 3, 1, 3, 1], [1, 5, 3, 2, 1, 3], [4, 1, 1, 1, 3, 1, 1], [2, 1, 1, 3, 2], [3, 1, 2, 1, 1, 4], [1, 3, 1, 1, 3, 2], [4, 1, 2, 4, 1, 1], [4, 5, 1, 1, 1, 3], [3, 3, 3, 2, 1, 1], [2, 1, 1, 1, 1, 1, 2, 1, 2, 1], [1, 1, 2, 3, 5], [1, 1, 4, 4, 1, 1], [1, 5, 1, 2, 1, 2, 2], [5, 1, 1, 1, 1, 1, 1, 1]]
    , [[1, 1, 1, 1, 1, 1, 2, 4, 2], [1, 2, 1, 1, 1, 2, 4, 1], [1, 8, 4, 1, 1], [3, 2, 1, 3, 1, 2, 1, 1, 1], [1, 6, 1, 3, 1, 2], [1, 4, 1, 3, 2, 6], [4, 2, 3, 1, 1, 2, 1], [1, 1, 3, 2, 1, 1, 4, 2], [1, 2, 1, 1, 1, 1, 3], [1, 2, 5, 2, 3], [4, 2, 2, 2, 3, 2], [1, 4, 1, 1, 2], [1, 2, 1, 1, 1, 2], [2, 2, 1, 2, 2, 1, 1], [2, 4, 1, 1, 3, 6], [2, 1, 1, 1, 1, 5], [3, 1, 2, 2, 2, 1], [3, 1, 5, 2, 4], [1, 5, 2, 1, 2, 2], [2, 2, 1, 1, 1, 1], [1, 1, 1, 3, 2, 1, 2], [2, 1, 3, 4, 1, 1], [10, 1, 2, 2, 1], [3, 4, 4, 1, 1], [3, 4, 2, 2, 1, 2, 2]]
    )
{-# NOINLINE puzzle_25x25_6 #-}

puzzle_25x25_7 :: Puzzle
puzzle_25x25_7 = 
    ( [[1, 2, 1, 1, 1, 2, 4, 2, 1], [1, 1, 5, 1, 1, 2, 2], [2, 3, 2, 1, 2, 4, 1], [2, 1, 4, 2, 1, 1, 3, 1], [3, 4, 3, 1, 1], [1, 2, 1, 1, 1, 1, 4, 2], [2, 1, 1, 1, 1, 2], [1, 2, 2, 1, 4, 2, 2], [2, 4, 3, 1, 1, 1], [1, 1, 4, 1, 1, 1, 2], [4, 2, 1, 1, 1, 2, 3], [1, 3, 2, 1, 4, 1, 1], [1, 4, 2, 1, 2, 3], [3, 3, 12, 1], [6, 3, 5], [1, 3, 2, 2, 6], [3, 2, 1, 1, 1, 1, 1], [4, 1, 1, 2, 2, 1], [3, 1, 5, 1, 1, 3], [4, 4, 1, 1, 1, 1], [1, 1, 4, 1, 5, 3, 1], [1, 1, 1, 2, 2, 1, 1, 5], [1, 1, 1, 1, 3], [3, 1, 1, 1, 1, 2, 1], [1, 2, 1, 2, 2, 1, 1]]
    , [[4, 2, 1, 1, 1, 2, 3], [3, 3, 2, 4, 2, 1, 1], [1, 2, 3, 3, 1, 2, 1], [1, 6, 2, 2, 4], [3, 3, 1, 4, 1], [3, 1, 1, 2, 5, 1, 1], [1, 2, 4, 2, 1, 3, 1], [5, 3, 2, 1, 1, 2, 1], [4, 1, 1, 2, 2, 4], [1, 2, 1, 4, 1, 1, 1], [3, 2, 1, 3, 1, 1], [1, 1, 1, 2, 1, 2], [1, 2, 4, 1, 4], [4, 3, 2, 1, 1, 1, 1, 1], [1, 1, 1, 1, 5, 2], [1, 1, 1, 1, 3, 1, 1], [2, 1, 2, 1, 3, 1, 1], [2, 3, 1, 1, 1, 1, 1, 1], [1, 3, 1, 2, 1, 1, 2], [1, 2, 1, 1, 1, 6, 3], [2, 1, 1, 1, 4, 2, 4], [4, 2, 2, 5], [1, 1, 1, 2, 10, 2], [3, 1, 1, 2, 1, 2, 2], [1, 1, 2, 1, 3, 2, 1]]
    )
{-# NOINLINE puzzle_25x25_7 #-}

puzzle_25x25_8 :: Puzzle
puzzle_25x25_8 = 
    ( [[3, 1, 6, 1, 1, 2], [2, 2, 2, 1, 1, 1, 1], [1, 3, 3, 1, 4, 2], [1, 1, 1, 1, 2, 2, 3], [2, 2, 2, 2, 1, 3], [4, 2, 2, 1, 2, 3], [2, 1, 1, 2, 3, 1, 5, 1], [1, 1, 1, 2, 1, 1, 2, 1, 2], [2, 3, 3, 3, 1, 1], [4, 1, 2, 1, 1, 5, 1], [1, 1, 2, 1, 1, 1, 7], [1, 2, 5, 1, 1, 1, 2, 1], [1, 1, 3, 6, 1, 2], [3, 1, 1, 1, 2, 2, 1], [3, 3, 2, 1, 3, 1, 1], [2, 2, 3, 4, 1, 1], [1, 1, 1, 12, 2], [1, 1, 1, 2, 3, 5], [3, 1, 2, 2, 1, 1], [2, 2, 1, 1, 1, 1, 2], [7, 2, 2, 1, 1], [2, 1, 1, 2, 1, 2, 1, 1], [3, 1, 1, 2, 2, 2, 3], [3, 2, 1, 1, 8], [4, 2, 2, 1, 1, 1, 2, 1]]
    , [[2, 4, 4, 1, 1, 2], [2, 3, 3, 2, 6], [1, 3, 1, 1, 3, 3, 3], [1, 3, 3, 3, 1, 2], [1, 1, 1, 1, 1, 1, 1, 1], [3, 1, 1, 1, 2, 1], [4, 2, 1, 2, 4], [1, 1, 3, 1, 1, 1], [1, 7, 4, 4], [2, 1, 1, 2, 3, 2, 2, 1], [3, 1, 2, 1, 1, 2, 2, 1], [1, 1, 4, 1, 1, 1, 2, 1, 2, 1], [1, 2, 1, 1, 1, 1, 2, 1, 1, 1], [2, 3, 1, 2, 1, 1, 1], [1, 3, 1, 3, 2, 1, 1], [1, 4, 3, 2, 3], [2, 1, 4, 3, 1, 1, 1], [2, 1, 1, 1, 5, 1, 2], [1, 4, 10, 2], [6, 2, 1, 4, 2, 2], [3, 1, 3, 1, 2, 2], [1, 1, 3, 4, 3, 1, 3], [1, 1, 1, 2, 1, 2, 1, 3], [1, 2, 1, 2, 1, 1, 1, 1, 1, 1], [1, 2, 2, 6, 1, 2]]
    )
{-# NOINLINE puzzle_25x25_8 #-}

puzzle_25x25_9 :: Puzzle
puzzle_25x25_9 = 
    ( [[3, 2, 4, 3, 1, 3], [1, 4, 1, 2, 1, 2, 1], [3, 1, 1, 2, 1, 1, 1, 1], [1, 2, 3, 3, 1, 1, 1], [4, 7, 3, 1, 2], [1, 1, 7, 3], [1, 1, 1, 2, 1, 3], [1, 1, 2, 2, 1, 2, 1, 1], [2, 5, 3, 2, 1, 2], [2, 1, 3, 1, 6, 2], [1, 1, 1, 1, 1, 1, 1, 2, 1], [4, 1, 1, 1, 4, 2, 3], [1, 4, 1, 1, 1, 1, 2, 1], [1, 5, 1, 2, 4, 1], [1, 2, 1, 2, 2, 3, 2, 1], [1, 2, 2, 6, 1, 1], [1, 1, 1, 1, 1, 2, 1, 1, 1], [3, 2, 2, 2, 4, 1], [1, 3, 2, 3, 2, 1], [3, 1, 2, 2, 3, 1], [1, 2, 2, 2, 2], [3, 1, 1, 1, 4, 1, 2], [2, 1, 7, 1], [2, 1, 2, 1, 3, 2], [3, 2, 2, 1, 1, 6]]
    , [[2, 3, 1, 1, 1], [3, 1, 5, 3, 1, 1, 1], [1, 1, 1, 1, 1, 1, 2], [2, 3, 3, 1, 4, 4], [1, 2, 3, 4, 1, 2], [2, 1, 1, 1, 2, 2, 2, 1], [2, 1, 5, 1, 1], [1, 2, 2, 2, 2, 1], [1, 7, 1, 1, 1, 1, 3], [2, 3, 2, 1, 3, 1, 1], [1, 4, 1, 1, 2, 1, 4], [1, 3, 1, 1, 1, 1, 1, 1, 1], [1, 2, 1, 1, 1, 2, 2, 1], [5, 2, 3, 2, 2, 1], [3, 2, 1, 3, 2, 1], [2, 1, 3, 4, 2, 2, 1], [1, 1, 1, 1, 2, 4], [3, 1, 3, 2, 3, 1, 2, 2], [1, 2, 3, 1, 4, 1], [1, 2, 1, 1, 1, 2], [1, 4, 1, 2, 4, 4], [1, 1, 9, 2, 2], [1, 3, 3, 2, 1], [1, 3, 1, 2, 1, 1, 2], [2, 5, 8, 1, 2]]
    )
{-# NOINLINE puzzle_25x25_9 #-}

puzzle_25x25_10 :: Puzzle
puzzle_25x25_10 = 
    ( [[2, 1, 3, 1, 1], [2, 1, 5, 2, 5, 1], [1, 1, 1, 3, 1, 1, 2, 1, 1, 1], [2, 1, 1, 1, 7, 1], [1, 1, 1, 2, 3, 6], [2, 4, 1, 5, 3], [2, 2, 3, 4, 1, 1, 1], [1, 5, 1, 1, 2, 1, 2], [1, 2, 4, 1, 2, 1], [1, 1, 5, 2, 1, 4, 1], [1, 1, 3, 1, 1, 2, 3], [2, 3, 1, 2, 1, 1, 3], [2, 2, 1, 2], [2, 1, 3, 1, 1, 3], [1, 1, 2, 4, 1, 5, 1], [4, 2, 2, 1, 1], [1, 3, 1, 1, 5], [1, 1, 1, 3, 1, 1, 1, 2, 1], [1, 2, 1, 1, 5, 1, 1], [4, 4, 1, 3, 1, 1], [2, 2, 1, 7, 1, 3], [6, 2, 1, 3, 1], [4, 1, 2, 1, 1, 4], [2, 4, 1, 1, 1, 1, 4, 1], [1, 3, 1, 2, 1, 1, 2, 6]]
    , [[2, 2, 5, 2, 1, 1, 2], [2, 1, 2, 5, 1, 1, 1], [1, 2, 1, 2, 2, 2, 1, 1], [1, 4, 3, 3], [3, 2, 1, 1, 1, 1, 6], [2, 4, 1, 3, 3], [2, 1, 5, 1, 1, 2, 2], [6, 3, 1, 1], [2, 2, 1, 3, 2, 3, 1], [2, 1, 2, 1, 1, 3, 2, 2], [3, 3, 2, 1, 1], [1, 2, 5, 1, 5], [4, 2, 1, 1, 1, 5, 2], [1, 3, 1, 3, 3], [3, 1, 8], [4, 1, 2, 1, 1, 1], [1, 5, 1, 1, 1, 1, 2], [2, 1, 1, 2, 1, 1, 1, 1], [5, 4, 1, 1, 2, 1, 1], [2, 3, 1, 6, 1, 7], [4, 2, 3, 1, 1, 2], [1, 1, 1, 2, 2, 4], [2, 3, 2, 1, 2, 1, 1], [3, 1, 3, 1, 1, 1, 3], [1, 3, 1, 1, 1, 4, 1]]
    )
{-# NOINLINE puzzle_25x25_10 #-}

puzzles_25x25 :: [Puzzle]
puzzles_25x25 = [puzzle_25x25_1, puzzle_25x25_2, puzzle_25x25_3, puzzle_25x25_4, puzzle_25x25_5, puzzle_25x25_6, puzzle_25x25_7, puzzle_25x25_8, puzzle_25x25_9, puzzle_25x25_10]
