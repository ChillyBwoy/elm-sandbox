module Counter (Model, Action, Context, init, update, view) where

import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)

-- MODEL
type alias Model = Int

type alias Context =
  { actions : Signal.Address Action
  , remove : Signal.Address ()
  }

init : Int -> Model
init count = count

-- UPDATE
type Action
  = Increment
  | Decrement

update : Action -> Model -> Model
update action model =
  case action of
    Increment -> model + 1
    Decrement -> model - 1


-- VIEW
view : Context -> Model -> Html
view context model =
  div []
    [ button [ onClick context.actions Decrement ] [text "-"]
    , div [ countStyle ] [text (toString model)]
    , button [ onClick context.actions Increment ] [text "+"]
    , div [ countStyle ] []
    , button [ onClick context.remove () ] [text "x"]
    ]


countStyle : Attribute
countStyle =
  style [ ("font-size", "20px")
        , ("font-family", "monospace")
        , ("display", "inline-block")
        , ("width", "50px")
        , ("text-align", "center")]
