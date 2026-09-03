let Prelude = https://prelude.dhall-lang.org/package.dhall

let Manifest = ../../Types/Manifest.dhall

let System = ../../Types/System.dhall

let Tag = ../../Types/Tag.dhall

in  Manifest::{
    , Name = "CustomSaveArt"
    , DisplayName = Some "Custom Save Art"
    , Description = "Makes white palace save art funny. Literally nothing else."
    , Version = "1.5.0.1"
    , PlatformLinks =
      [ { Platform = System.Universal
        , Url =
            "https://github.com/SFGrenade/CustomSaveArt/releases/download/v1.5.0.1/CustomSaveArt.zip"
        , Sha256 =
            "8302BE9F5D2FB9464310E9F74E11A7581A99185B81662DC09449BDC426A7C060"
        }
      ]
    , Repository = "https://github.com/SFGrenade/CustomSaveArt/"
    , ReadMe = Some
        "https://github.com/SFGrenade/CustomSaveArt/raw/refs/heads/master/README.md"
    , Issues = Some "https://github.com/SFGrenade/CustomSaveArt/issues/"
    , Tags = [ Tag.Cosmetic ]
    , Authors = [ "SFGrenade" ]
    }
