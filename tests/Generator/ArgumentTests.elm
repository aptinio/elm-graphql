module Generator.ArgumentTests exposing (all)

import Expect
import GraphqElm.Parser.Scalar as Scalar
import GraphqElm.Parser.Type as Type
import String.Format
import Test exposing (Test, describe, test)


requiredArgsString : List Type.Arg -> Maybe String
requiredArgsString args =
    let
        stuff =
            List.filterMap requiredArgString args
    in
    if stuff == [] then
        Nothing
    else
        Just ("[ " ++ (stuff |> String.join "") ++ " ]")


requiredArgString : Type.Arg -> Maybe String
requiredArgString { name, typeRef } =
    case typeRef of
        Type.TypeReference referrableType Type.NonNullable ->
            String.Format.format1
                "Argument.string \"{1}\" requiredArgs.{1}"
                name
                |> Just

        Type.TypeReference referrableType Type.Nullable ->
            Nothing


requiredArgsAnnotation : List Type.Arg -> Maybe String
requiredArgsAnnotation args =
    let
        stuff =
            List.filterMap requiredArgAnnotation args
    in
    if stuff == [] then
        Nothing
    else
        Just ("{ " ++ (stuff |> String.join "") ++ " }")


requiredArgAnnotation : Type.Arg -> Maybe String
requiredArgAnnotation { name, typeRef } =
    case typeRef of
        Type.TypeReference referrableType Type.NonNullable ->
            String.Format.format1
                "{1} : String"
                name
                |> Just

        Type.TypeReference referrableType Type.Nullable ->
            Nothing


all : Test
all =
    describe "required argmument generators"
        [ describe "argument list"
            [ test "no arguments gives Nothing" <|
                \() ->
                    []
                        |> requiredArgsString
                        |> Expect.equal Nothing
            , test "all nullable arguments give Nothing" <|
                \() ->
                    [ { name = "id"
                      , typeRef = Type.TypeReference (Type.Scalar Scalar.String) Type.Nullable
                      }
                    ]
                        |> requiredArgsString
                        |> Expect.equal Nothing
            , test "single primitive required argument" <|
                \() ->
                    [ { name = "id"
                      , typeRef = Type.TypeReference (Type.Scalar Scalar.String) Type.NonNullable
                      }
                    ]
                        |> requiredArgsString
                        |> Expect.equal (Just """[ Argument.string "id" requiredArgs.id ]""")
            ]
        , describe "annotations"
            [ test "all nullable arguments give Nothing" <|
                \() ->
                    [ { name = "id"
                      , typeRef = Type.TypeReference (Type.Scalar Scalar.String) Type.Nullable
                      }
                    ]
                        |> requiredArgsAnnotation
                        |> Expect.equal Nothing
            , test "single primitive required argument" <|
                \() ->
                    [ { name = "id"
                      , typeRef = Type.TypeReference (Type.Scalar Scalar.String) Type.NonNullable
                      }
                    ]
                        |> requiredArgsAnnotation
                        |> Expect.equal (Just """{ id : String }""")
            ]
        ]



{-
   droid : { id : String } -> Object droid Api.Object.Droid.Type -> Field.Query droid
   droid requiredArgs object =
       Object.single "droid" [ Argument.string "id" requiredArgs.id ] object
           |> Query.rootQuery
-}