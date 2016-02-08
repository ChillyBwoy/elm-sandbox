module Chat.Room where

import Html exposing (..)
import Html.Attributes exposing (class)

import Chat.UserList as UserList
import Chat.Message as Message

-- MODEL
type alias Model =
  { users : UserList.Model
  , messages : List Message.Model
  }


init : Model
init =
  { users = UserList.init
  , messages = []
  }


-- UPDATE
type Action
  = NoOp


update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model


view : Signal.Address Action -> Model -> Html
view address model =
  div [ class "chat__room" ]
    [ div [ class "chat__room-users" ] [] ]
