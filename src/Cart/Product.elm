module Product (Model, init, Action, update, view) where

import Html exposing (..)

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

update : Action -> Model -> Model
update action model =
  case action of
    Create ->
      {}
