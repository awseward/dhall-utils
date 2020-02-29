let Text/concatSep = (../imports.dhall).Text/concatSep

let Optional/listWhereSome = ./listWhereSome.dhall

let concatSep =
        λ(separator : Text)
      → λ(xs : List (Optional Text))
      → Text/concatSep separator (Optional/listWhereSome Text xs)

let _concatSep0 =
      assert : concatSep "," [ Some "a", None Text, Some "c" ] ≡ "a,c"

let _concatSep1 = assert : concatSep "," [ None Text, None Text ] ≡ ""

in  concatSep
