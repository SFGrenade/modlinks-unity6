let Prelude = https://prelude.dhall-lang.org/package.dhall

let Manifest = ../Types/Manifest.dhall

let System = ../Types/System.dhall

let Tag = ../Types/Tag.dhall

in  Manifest::{
    , Name = "SFCore"
    , DisplayName = Some "SFCore"
    , Description = "Library mod used by other mods."
    , Version = "1.5.16.2"
    , PlatformLinks =
      [ { Platform = System.Universal
        , Url =
            "https://github.com/SFGrenade/SFCore/releases/download/v1.5.16.2/SFCore.zip"
        , Sha256 =
            "F2B90438437AC3EE17DEC4C4359ABAF662C25B34DB1439F92826DD11575586B2"
        }
      ]
    , Repository = "https://github.com/SFGrenade/SFCore/"
    , ReadMe = Some
        "https://github.com/SFGrenade/SFCore/raw/refs/heads/master/README.md"
    , Issues = Some "https://github.com/SFGrenade/SFCore/issues/"
    , Dependencies = Some [ (./WavLib.dhall).Name ]
    , Tags = [ Tag.Library ]
    , Authors = [ "SFGrenade", "Clazex", "Dandy", "dplochcoder" ]
    }
