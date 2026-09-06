let Types = ../Types.dhall

in  Types.Manifest::{
    , Name = "WavLib"
    , DisplayName = Some "WavLib"
    , Description = "A library to read and write WAV files."
    , Version = "1.1.9.0"
    , PlatformLinks =
      [ { Platform = Types.System.Universal
        , Url =
            "https://github.com/SFGrenade/WavLib/releases/download/v1.1.9/WavLib.zip"
        , Sha256 =
            "A06B433F7B8D8DAE61F4B4205F1A414A5A12BA35866174B27885E7D0AE27F31F"
        }
      ]
    , Repository = "https://github.com/SFGrenade/WavLib/"
    , ReadMe = Some
        "https://github.com/SFGrenade/WavLib/raw/refs/heads/master/README.md"
    , Issues = Some "https://github.com/SFGrenade/WavLib/issues/"
    , Tags = [ Types.Tag.Library ]
    , Authors = [ "SFGrenade" ]
    }
