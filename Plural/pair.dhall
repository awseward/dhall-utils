let make = ./make.dhall

let pair
    : ∀(a : Type) →
      ∀(head : a) →
      ∀(neck : a) →
        { head : a, neck : a, tail : List a }
    = λ(a : Type) → λ(head : a) → λ(neck : a) → make a head neck ([] : List a)

let _testPair =
        assert
      :   pair Text "foo" "bar"
        ≡ { head = "foo", neck = "bar", tail = [] : List Text }

in  pair
