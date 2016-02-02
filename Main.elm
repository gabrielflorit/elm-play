module Main (..) where

import Html
import Mouse


view : Int -> Html.Html
view x =
  x
    |> double
    |> toString
    |> Html.text


double : Int -> Int
double x =
  x * 2


main : Signal.Signal Html.Html
main =
  Signal.map view Mouse.x
