module Chat.Room where

import Html exposing (..)

import Chat.User
import Chat.Message

-- MODEL
type alias Model =
  { name : String
  , users : List Chat.User.Model
  , messages : List Chat.Message.Model
  }


-- UPDATE
type Action
  = NoOp
  | AddUser String


update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model

    AddUser email' ->
      model


view : Model -> Html
view model =
  div [] []
