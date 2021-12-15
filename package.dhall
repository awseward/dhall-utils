let NonEmptyShim =
    -- TODO: Remove this shim once NonEmpty from Prelude is available tagged

      (./imports.dhall).Prelude.{ NonEmpty }

in    { List = ./List/package.dhall
      , NonEmpty = (./imports.dhall).Prelude.NonEmpty
      , Optional = ./Optional/package.dhall
      , Plural = ./Plural/package.dhall
      }
    ⫽ NonEmptyShim
