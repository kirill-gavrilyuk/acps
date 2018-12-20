module Main where

import Prelude

import Data.Array ( head, tail )
import Data.Maybe ( fromMaybe )


foreign import filter :: forall a . ( a -> Boolean ) -> Array a -> Array a


sort :: forall a . Ord a => Array a -> Array a
sort arr = fromMaybe [] do
    pivot <- head arr
    rest  <- tail arr

    let
        left  = sort $ filter ( _ <  pivot ) rest
        right = sort $ filter ( _ >= pivot ) rest

    pure $ left <> [ pivot ] <> right


sortInt :: Array Int -> Array Int
sortInt = sort


