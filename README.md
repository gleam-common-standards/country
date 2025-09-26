# Country

[![Package Version](https://img.shields.io/hexpm/v/country)](https://hex.pm/packages/country)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/country/)

```sh
gleam add country@2
```

```gleam
import country

pub fn main() -> Nil {
  // get an Alpha3Code representation from the string
  let assert Ok(usa) = country.alpha_3_code_from_string("USA")
  assert usa == country.Usa

  // get an Alpha2Code representation from the string
  let assert Ok(us) = country.alpha_2_code_from_string("US")
  assert us == country.Us

  // get the base Country type from both Alpha3Code and Alpha2Code and compare
  assert country.from_alpha_3_code(usa) == country.from_alpha_2_code(us)

  // get the base Country type from the numeric string
  let assert Ok(us) = country.from_numeric_code("840")
  assert us == country.UnitedStatesOfAmerica

  // attempt to get a Country type from an incorrect numeric code value
  let assert Error(country.IncorrectNumericCode) =
    country.from_numeric_code("<incorrect>")

  Nil
}
```

Further documentation can be found at <https://hexdocs.pm/country>.
