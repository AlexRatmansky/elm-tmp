module Main exposing (main)

import Browser
import Html exposing (Html, div, h1, p, strong, text)
import Html.Attributes exposing (class)


type alias Model =
    String


initialModel : Model
initialModel =
    "0"


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model ++ "1"

        Decrement ->
            model ++ "0"


view : a -> Html msg
view model =
    div [ class "jumbotron" ]
        [ h1 [] [ text "Welcome to Dunder Mifflin!" ]
        , p []
            [ text "Dunder Mifflin Inc. (stock symbol "
            , strong [] [ text "DMI" ]
            , text <|
                """ 
                ) is a micro-cap regional paper and office 
                supply distributor with an emphasis on servicing 
                small-business clients.
                """
            ]
        ]


main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }
