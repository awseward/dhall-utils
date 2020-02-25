let Text/concatSep =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v13.0.0/Prelude/Text/concatSep sha256:e4401d69918c61b92a4c0288f7d60a6560ca99726138ed8ebc58dca2cd205e58

let Optional/listWhereSome = ./listWhereSome.dhall

let concatSep =
        λ(separator : Text)
      → λ(xs : List (Optional Text))
      → Text/concatSep separator (Optional/listWhereSome Text xs)

let _concatSep0 =
      assert : concatSep "," [ Some "a", None Text, Some "c" ] ≡ "a,c"

let _concatSep1 = assert : concatSep "," [ None Text, None Text ] ≡ ""

in  concatSep
