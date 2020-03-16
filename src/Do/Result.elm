module Do.Result exposing (do)

{-| This library extends Result from elm-core with do function

@docs do
-}


{-|
    import Do.Result as Result

    Result.do (Ok 1) <| \x ->
    Result.do (Ok 2) <| \y ->
    Ok ( x, y )  -- Ok ( 1, 2 )
-}
do : Result error a -> (a -> Result error b) -> Result error b
do first second =
    Result.andThen second first
