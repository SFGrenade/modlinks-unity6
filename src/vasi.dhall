let Prelude = https://prelude.dhall-lang.org/package.dhall

let Manifest = ../types/Manifest.dhall

let System = ../types/System.dhall

let Tag = ../types/Tag.dhall

in  Manifest::{
    , Name = "Vasi"
    , DisplayName = Some "Vasi"
    , Description = "A library with some utility classes."
    , Version = "2.0.0.0"
    , PlatformLinks =
      [ { Platform = System.Universal
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
    , Tags = [ Tag.Library ]
    , Authors = [ "56" ]
    }
