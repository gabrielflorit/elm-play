module Main (..) where

import Html exposing (Html)
import FileChooser exposing (update, view)
import StartApp.Simple exposing (start)


main : Signal Html.Html
main =
  start { model = 0, update = update, view = view }
