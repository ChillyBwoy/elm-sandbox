import Html exposing (..)

import CounterPair exposing (init, update, view)
import StartApp.Simple exposing (start)

main : Signal Html
main =
  start
    { model = init 0 0
    , update = update
    , view = view
    }
