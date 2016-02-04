module Chat.User where

import Uuid exposing (Uuid)
import Html exposing (..)
import Html.Attributes exposing (class)

-- MODEL
type alias Model =
  { uuid: Uuid
  , email : String
  , is_anonymous : Bool
  }

init : Uuid -> String -> Model
init uuid' email' =
  { uuid = uuid'
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
