module Chat.Message where

import Html exposing (..)
import Date exposing (Date)

import Chat.User

-- MODEL
type alias Model =
  { uuid : String
  , author : Chat.User.Model
  , body : String
  , created_at : Date
  }


dateView : Date -> Html
dateView d =
  div []
    [ span [] [text (toString d) ]]


view : Model -> Html
view model =
  div []
    [ div []
        [ Chat.User.view model.author
        , dateView model.created_at ]
    , div [] [ text model.body ]
    ]
