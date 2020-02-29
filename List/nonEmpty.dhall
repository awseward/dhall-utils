let List/null = (../imports.dhall).List/null

let nonEmpty =
        λ(a : Type)
      → λ(xs : List a)
      → if List/null a xs then None (List a) else Some xs

let _example0 =
      let xs = [] : List Text in assert : nonEmpty Text xs ≡ None (List Text)

let _example1 =
      let xs = [ "a" ] : List Text in assert : nonEmpty Text xs ≡ Some xs

let _example0 = assert : nonEmpty Text ([] : List Text) ≡ None (List Text)

in  nonEmpty
