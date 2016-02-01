module Chat.Message where

import Date exposing (Date)

import Chat.User

-- MODEL
type alias Model =
  { uuid : String
  , author : Chat.User.Model
  , body : String
  , created_at : Date
  }
