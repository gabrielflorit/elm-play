module FileChooser (..) where

import Html exposing (Html, button, text, div)
import Html.Events exposing (onClick)


-- MODEL


type alias Model =
  Int



-- UPDATE


type Action
  = Increment


update : Action -> Model -> Model
update action model =
  case action of
    Increment ->
      model + 1



-- VIEW


view : Signal.Address Action -> Model -> Html
view address model =
  div
    []
    [ button [ onClick address Increment ] [ text "+" ]
    , div [] [ text (toString model) ]
    ]
