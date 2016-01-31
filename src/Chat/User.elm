module Chat.User where

import Html exposing (..)
import Html.Attribute exposing (class)

-- MODEL
type alias Model =
  { uuid: String
  , email : String
  , is_anonymous : Bool
  }

init : String -> Model
init email' =
  { uuid = ""
  , email = email'
  , is_anonymous = True
  }


-- UPDATE
type Action
  = NoOp
  | Update

update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model

    Update ->
      model


-- VIEW
view : Model -> Html
view model =
  div [class "user"] [text model.email]
