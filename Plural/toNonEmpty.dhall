let Plural = ./Type.dhall

let make = ./make.dhall

let NonEmpty = (../imports.dhall).NonEmpty

let toNonEmpty
    : ∀(a : Type) → Plural a → NonEmpty.Type a
    = λ(a : Type) →
      λ(xs : Plural a) →
        NonEmpty.make a xs.head ([ xs.neck ] # xs.tail)

let _testToNonEmpty =
        assert
      :   toNonEmpty Text (make Text "foo" "bar" [ "baz" ])
        ≡ NonEmpty.make Text "foo" [ "bar", "baz" ]

in  toNonEmpty
