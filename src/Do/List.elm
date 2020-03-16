module Do.List exposing (do)

{-| This library extends List from elm-core with do function

@docs do
-}


{-|
    import Do.List as List

    List.do [1, 2, 3] <| \x ->
    List.do [1, 2, 3] <| \y ->
    [[ x, y ]]  -- [[1,1],[1,2],[1,3],[2,1],[2,2],[2,3],[3,1],[3,2],[3,3]]
-}
do : List a -> (a -> List b) -> List b
do first second =
    List.concatMap second first
