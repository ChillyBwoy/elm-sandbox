module Chat.Room where

import Html exposing (..)
import Html.Attributes exposing (class)

import Chat.User
import Chat.Message

-- MODEL
type alias Model =
  { nextSeed : String
  , users : List Chat.User.Model
  , messages : List Chat.Message.Model
  }


init : Model
init =
  { nextSeed = ""
  , users = []
  , messages = []
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


viewUser : Chat.User.Model -> Html
viewUser user =
  li [] [ Chat.User.view user ]


view : Signal.Address Action -> Model -> Html
view address model =
  let
    users = List.map viewUser model.users
  in
    div [ class "chat__room" ]
      [ div [ class "chat__room-users" ]
          [ h2 [] [text "Users"]
          , ul [] users ] ]
