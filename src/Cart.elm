module Cart where

import Html exposing (..)
import Signal exposing (Signal, Address)



---- MODEL ----
type alias Model =
  { products : List Product}

emptyModel : Model
emptyModel =
  { products = []}


type alias Product =
  { name : String
  , price : Int
  }


---- UPDATE ----
type Action
  = Idle
  | Add
  | Remove

update : Action -> Model -> Model
update action model =
  case action of
    Idle -> model
    Add -> model
    Remove -> model


---- VIEW ----
view : Address Action -> Model -> Html
view address action =
  div [] [text "HAI!"]



main : Signal Html
main =
  Signal.map (view actions.address) model


-- manage the model of our application over time
model : Signal Model
model =
  Signal.foldp update initialModel actions.signal


initialModel : Model
initialModel =
  Maybe.withDefault emptyModel getStorage


port getStorage : Maybe Model


-- actions from user input
actions : Signal.Mailbox Action
actions =
  Signal.mailbox Idle
