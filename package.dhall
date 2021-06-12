{ List = ./List/package.dhall
, Optional = ./Optional/package.dhall
, NonEmpty
  -- TODO: Remove this shim once NonEmpty from Prelude is available tagged
  = (./imports.dhall).NonEmpty
, Nonempty
  -- TODO: Remove this shim as soon as callers referencing the typo have updated
  = (./imports.dhall).NonEmpty
}
