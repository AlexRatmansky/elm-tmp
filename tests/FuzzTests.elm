module FuzzTests exposing (add, addOneTests)

import Expect exposing (equal)
import Fuzz exposing (int)
import Test exposing (Test, describe, fuzz, test)


addOneTests : Test
addOneTests =
    describe "addOne"
        [ fuzz int "adds 1 to any integer" <|
            \num ->
                addOne num |> equal (num + 1)
        , test "when 1 is added to 2, the result is 3" <|
            \_ ->
                addOne 2 |> equal 4
        ]


addOne : Int -> Int
addOne x =
    1 + x


add : Int -> Int -> Int
add x y =
    x + y
