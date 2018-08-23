-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.PullRequestState exposing (PullRequestState(..), decoder, toString)

import Json.Decode as Decode exposing (Decoder)


{-| The possible states of a pull request.

  - Open - A pull request that is still open.
  - Closed - A pull request that has been closed without being merged.
  - Merged - A pull request that has been closed by being merged.

-}
type PullRequestState
    = Open
    | Closed
    | Merged


decoder : Decoder PullRequestState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "OPEN" ->
                        Decode.succeed Open

                    "CLOSED" ->
                        Decode.succeed Closed

                    "MERGED" ->
                        Decode.succeed Merged

                    _ ->
                        Decode.fail ("Invalid PullRequestState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : PullRequestState -> String
toString enum =
    case enum of
        Open ->
            "OPEN"

        Closed ->
            "CLOSED"

        Merged ->
            "MERGED"
