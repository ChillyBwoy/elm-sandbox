module Chat.Message where

import Html exposing (..)
import Html.Attributes exposing (class)

import Chat.User

-- MODEL
type alias Model =
  { uuid : String
  , author : Chat.User.Model
  , body : String
  , created_at : Date
  }
