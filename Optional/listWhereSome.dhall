{- Returns only the elements in a list of Optionals which are Some, unwrapped -}

let listWhereSome
    : ∀(a : Type) → List (Optional a) → List a
    =   λ(a : Type)
      → λ(xOpts : List (Optional a))
      → List/fold
          (Optional a)
          xOpts
          (List a)
          (   λ(xOpt : Optional a)
            → λ(xs : List a)
            → merge { None = xs, Some = λ(x : a) → [ x ] # xs } xOpt
          )
          ([] : List a)

let _example0 = assert : listWhereSome Bool [ None Bool ] ≡ ([] : List Bool)

let _example0 =
        assert
      : listWhereSome Text [ Some "a", None Text, Some "c" ] ≡ [ "a", "c" ]

in  listWhereSome
