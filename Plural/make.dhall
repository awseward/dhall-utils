let make
    : ∀(a : Type) →
      ∀(head : a) →
      ∀(neck : a) →
      ∀(tail : List a) →
        { head : a, neck : a, tail : List a }
    = λ(a : Type) →
      λ(head : a) →
      λ(neck : a) →
      λ(tail : List a) →
        { head, neck, tail }

let _testMake =
        assert
      :   make Text "foo" "bar" [ "baz", "moop" ]
        ≡ { head = "foo", neck = "bar", tail = [ "baz", "moop" ] }

in  make
