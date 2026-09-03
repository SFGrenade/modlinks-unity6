let Prelude = https://prelude.dhall-lang.org/package.dhall

let Manifest = ../../Types/Manifest.dhall

let System = ../../Types/System.dhall

let Tag = ../../Types/Tag.dhall

in  Manifest::{
    , Name = "BenchWarpFix"
    , DisplayName = Some "Bench Warp Fix"
    , Description =
        "When benchwarping into a scene without a bench, instead of softlock drops you into dirtmouth. Probably doesn't work with glitched runs."
    , Version = "1.5.1.1"
    , PlatformLinks =
      [ { Platform = System.Universal
        , Url =
            "https://github.com/SFGrenade/BenchWarpFix/releases/download/v1.5.1.1/BenchWarpFix.zip"
        , Sha256 =
            "D22C6C90EFEFBB649314586EFD3A8FAACDD2D772CA0917FC3F701B574DE17FDE"
        }
      ]
    , Repository = "https://github.com/SFGrenade/BenchWarpFix/"
    , ReadMe = Some
        "https://github.com/SFGrenade/BenchWarpFix/raw/refs/heads/master/README.md"
    , Issues = Some "https://github.com/SFGrenade/BenchWarpFix/issues/"
    , Tags = [ Tag.Utility ]
    , Authors = [ "SFGrenade" ]
    }
