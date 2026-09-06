let Types = ../Types.dhall

in  Types.Manifest::{
    , Name = "Vasi"
    , DisplayName = Some "Vasi"
    , Description = "A library with some utility classes."
    , Version = "2.0.0.0"
    , PlatformLinks =
      [ { Platform = Types.System.Universal
        , Url =
            "https://github.com/fifty-six/HollowKnight.Vasi/releases/download/v2/Vasi.zip"
        , Sha256 =
            "B93FA7ECDF40D5F91F942ACFD31CD2A5243551720C96E18DDE99FD64919162EC"
        }
      ]
    , Repository = "https://github.com/fifty-six/HollowKnight.Vasi/"
    , ReadMe = Some
        "https://github.com/fifty-six/HollowKnight.Vasi/raw/refs/heads/master/README.md"
    , Issues = Some "https://github.com/fifty-six/HollowKnight.Vasi/issues/"
    , Tags = [ Types.Tag.Library ]
    , Authors = [ "56" ]
    }
