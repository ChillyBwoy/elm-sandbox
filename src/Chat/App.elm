import Html exposing (..)

import StartApp.Simple exposing (start)
import Chat.Room exposing (init, update, view)

main : Signal Html
main =
  start
    { model = init
    , update = update
    , view = view
    }
