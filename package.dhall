{ List = ./List/package.dhall
, NonEmpty
  -- TODO: Remove this shim once NonEmpty from Prelude is available tagged
  = (./imports.dhall).NonEmpty
, Optional = ./Optional/package.dhall
, Plural = ./Plural/package.dhall
}
