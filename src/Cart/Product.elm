module Cart.Product (Model, init, Action, update, view) where

import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)

-- MODEL

type alias Model =
  { name : String
  , price : Int
  }

init : String -> Int -> Model
init name price =
  { name = name
  , price = price}


-- UPDATE
type Action
  = Create
  | Update

update : Action -> Model -> Model
update action model =
  case action of
    Create ->
      model
    Update ->
      model


-- VIEW
view : Signal.Address Action -> Model -> Html
view address model =
  div []
    [ span [] [text model.name]
    , span [] [text (toString model.price)]
    ]
