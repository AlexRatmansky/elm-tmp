module Playground exposing (main)

import Html exposing (Html, text)
import List exposing (isEmpty)
import MyList exposing (MyList(..))


list3 : List a
list3 =
    []


main : Html msg
main =
    List.isEmpty list3
        |> Debug.toString
        |> text
