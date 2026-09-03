let Prelude = https://prelude.dhall-lang.org/package.dhall

let Manifest = ../../Types/Manifest.dhall

let System = ../../Types/System.dhall

let Tag = ../../Types/Tag.dhall

in  Manifest::{
    , Name = "CarefreeRngReset"
    , DisplayName = Some "Carefree Rng Reset"
    , Description =
        "This mod resets carefree melody rng to highest likelyhood of blocking each time the player enters the hall of gods."
    , Version = "1.5.0.1"
    , PlatformLinks =
      [ { Platform = System.Universal
        , Url =
            "https://github.com/SFGrenade/MetabusserCheatMod/releases/download/v1.5.0.1/CarefreeRngReset.zip"
        , Sha256 =
            "BDD97533C7626FF64DF8D638CDEADB960303D4DA3870D199D4F10D665BEA3C6B"
        }
      ]
    , Repository = "https://github.com/SFGrenade/MetabusserCheatMod/"
    , ReadMe = Some
        "https://github.com/SFGrenade/MetabusserCheatMod/raw/refs/heads/master/README.md"
    , Issues = Some "https://github.com/SFGrenade/MetabusserCheatMod/issues/"
    , Tags = [ Tag.Utility ]
    , Authors = [ "SFGrenade" ]
    }
