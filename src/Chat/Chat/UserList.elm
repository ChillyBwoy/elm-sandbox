module Chat.UserList (Model, Context, init, view) where

import Html exposing (..)
import Html.Attributes exposing (class, type', value)
import Html.Events exposing (onClick)

import Chat.User as User


-- MODEL
type alias ID = Int

type alias Context =
  { actions : Signal.Address Action }

type alias Model =
  { nextID : ID
  , users : List (ID, User.Model)
  }

type Action
  = Add String
  | Remove ID


init : Model
init =
  { nextID = 0
  , users = []
  }

update : Action -> Model -> Model
update action model =
  case action of
    Add email' ->
      { model |
          users = (model.nextID, User.init email') :: model.users,
          nextID = model.nextID + 1
      }

    Remove id ->
      { model |
          users = List.filter (\(userID, _) -> userID /= id) model.users
      }



view : Signal.Address Action -> Model -> Html
view address model =
  let
    users = List.map (viewUser address) model.users
  in
    div [ class "users" ]
      [ h2 [] [text "Users"]
      , viewAddUser address
      , ul [] users
      ]


viewAddUser : Signal.Address Action -> Html
viewAddUser address =
  form []
    [ div []
        [ label []
            [ input [ type' "text"
                    , value ""
                    ] []
            , button [ onClick address (Add "ololo@exampla.com") ] [text "Add"]]
        ]
    ]


viewUser : Signal.Address Action -> (ID, User.Model) -> Html
viewUser address (id, model) =
  let context =
        User.Context
          (Signal.forwardTo address (always (Remove id)))
  in
    User.view context model
