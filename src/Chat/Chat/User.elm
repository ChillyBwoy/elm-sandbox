module Chat.User (Model, Context, init, view) where

import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)

-- MODEL

type alias Context =
  { remove : Signal.Address() }

type alias Model =
  { email : String
  , is_anonymous : Bool
  }

type Action
  = NoOp
  | Modify

init : String -> Model
init email' =
  { email = email'
  , is_anonymous = True
  }


update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model

    Modify ->
      model


-- VIEW
view : Context -> Model -> Html
view context model =
  div [class "user"]
    [ div [] [ text model.email ]
    , button [ onClick context.remove () ] [ text "&times;" ]
    ]
