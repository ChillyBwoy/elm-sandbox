module Chat.Message where

import Html exposing (..)

import Chat.User as User

-- MODEL
type alias Model =
  { author : User.Model
  , body : String
  , created_at : Int
  }

init : User.Model -> String -> Model
init author' body' =
  { author = author'
  , body = body'
  , created_at = 0
  }

dateView : Int -> Html
dateView d =
  div []
    [ span [] [text (toString d) ]]


view : Model -> Html
view model =
  div []
    [ div []
        [ User.view model.author
        , dateView model.created_at ]
    , div [] [ text model.body ]
    ]
