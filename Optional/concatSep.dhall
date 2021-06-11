let Prelude = (../imports.dhall).Prelude

let concatSep =
      λ(separator : Text) →
        Prelude.Function.compose
          (List (Optional Text))
          (List Text)
          Text
          (Prelude.List.unpackOptionals Text)
          (Prelude.Text.concatSep separator)

let _concatSep0 =
      assert : concatSep "," [ Some "a", None Text, Some "c" ] ≡ "a,c"

let _concatSep1 = assert : concatSep "," [ None Text, None Text ] ≡ ""

in  concatSep
