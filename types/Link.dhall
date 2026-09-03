let Prelude = https://prelude.dhall-lang.org/package.dhall

let System = ./System.dhall

let UrlString = ./UrlString.dhall

let ShaString = ./ShaString.dhall

let Link
    : Type
    = { Platform : System, Url : UrlString, Sha256 : ShaString }

in  Link
