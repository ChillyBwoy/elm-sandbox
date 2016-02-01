import Html exposing (..)

import CounterList exposing (init, update, view)
import StartApp.Simple exposing (start)

main : Signal Html
main =
  start
    { model = init
    , update = update
    , view = view
    }
