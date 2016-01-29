module ProductList where

import Product

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Signal exposing (Address)

-- MODEL

type alias Model =
  { products : List Product.Model }


init : Model
init =
  { products = []}



-- UPDATE

type Action
  = Add
  | Remove

update : Action -> Model -> Model
update action model =
  case action of
    Add ->
      {}

    Remove ->
      {}


view : Address Action -> Product.Model -> Html
view address model =
  div [] [text ("lol")]
