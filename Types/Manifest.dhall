let Prelude = https://prelude.dhall-lang.org/package.dhall

let NameString = ./NameString.dhall

let VersionString = ./VersionString.dhall

let Link = ./Link.dhall

let UrlString = ./UrlString.dhall

let Tag = ./Tag.dhall

let Manifest
    : Type
    = { Name : NameString
      , DisplayName : Optional Text
      , Description : Text
      , Version : VersionString
      , PlatformLinks : List Link
      , Repository : UrlString
      , ReadMe : Optional UrlString
      , Issues : Optional UrlString
      , Dependencies : Optional (List NameString)
      , Integrations : Optional (List NameString)
      , Tags : List Tag
      , Authors : List Text
      }

in  { Type = Manifest
    , default =
      { DisplayName = None Text
      , ReadMe = None UrlString
      , Issues = None UrlString
      , Dependencies = None (List NameString)
      , Integrations = None (List NameString)
      }
    }
