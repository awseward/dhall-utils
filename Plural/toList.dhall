let Plural = ./Type.dhall

let make = ./make.dhall

let toList
    : ∀(a : Type) → Plural a → List a
    = λ(a : Type) → λ(xs : Plural a) → [ xs.head, xs.neck ] # xs.tail

let _testToList =
        assert
      :   toList Text (make Text "foo" "bar" [ "baz", "moop" ])
        ≡ [ "foo", "bar", "baz", "moop" ]

in  toList
