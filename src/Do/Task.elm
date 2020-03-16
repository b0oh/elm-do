module Do.Task exposing (do)

{-| This library extends Task from elm-core with do function

@docs do
-}

import Task exposing (Task)


{-|
    import Do.Task as Task
    import Task
    import Time

    Task.do Time.now <| \now ->
    Task.succeed (Time.posixToMillis now)
-}
do : Task x a -> (a -> Task x b) -> Task x b
do first second =
    Task.andThen second first
