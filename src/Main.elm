module Main exposing (..)

import AssocList exposing (fromList)


type Route
    = UserInfo Int


routes : AssocList.Dict Route String
routes =
    fromList [ ( UserInfo 1, "foo" ), ( UserInfo 2, "bar" ) ]


{-| routeA == Just "bar"
-}
routeA : Maybe String
routeA =
    {- The type constructor argument is indirectly "used" as a key to extract
       the value, but the Rule warns that the argument is never extracted.
    -}
    AssocList.get (UserInfo 2) routes
