module Do.Maybe exposing (do)

{-| This library extends Maybe from elm-core with do function

@docs do
-}


{-|
    import Do.Maybe as Maybe

    Maybe.do (Just 1) <| \x ->
    Maybe.do (Just 2) <| \y ->
    Just ( x, y )  -- (Just ( 1, 2 ))
-}
do : Maybe a -> (a -> Maybe b) -> Maybe b
do first second =
    Maybe.andThen second first
