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
      model

    Remove ->
      model


view : Address Action -> Model -> Html
view address model =
  div []
    [ h1 [] [text "Cart"]
    , Html.form []
        [ label []
            [ span [] [text "Name"]
            , input [] []
            ]
        , label []
            [ span [] [text "price"]
            , input [] []
            ]
        , button [] [text "add"]
        ]
    , ul [] []
    ]
