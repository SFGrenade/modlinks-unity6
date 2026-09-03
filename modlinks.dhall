let Prelude = https://prelude.dhall-lang.org/package.dhall

-- yea, this would be needed to hardcode all possible files in ./src/*.dhall, so that's probably gonna be done via workflow
in  [ ./src/vasi.dhall ]
