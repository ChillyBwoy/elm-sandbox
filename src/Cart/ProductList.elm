module Cart.ProductList where

import Cart.Product

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Signal exposing (Address)

-- MODEL

type alias Model =
  { products : List Cart.Product.Model }

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
      model

    Remove ->
      model


view : Address Action -> Model -> Html
view address model =
  div []
    [ h1 [] [text "Cart"]
    , ul [] []
    ]
