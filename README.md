# Countries

[![Package Version](https://img.shields.io/hexpm/v/countries)](https://hex.pm/packages/countries)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/countries/)

```sh
gleam add countries@1
```

```gleam
import countries

pub fn main() -> Nil {
  // get an Alpha3Code representation from the string
  let assert Ok(usa) = countries.alpha_3_code_from_string("USA")
  assert usa == countries.USA

  // get an Alpha2Code representation from the string
  let assert Ok(us) = countries.alpha_2_code_from_string("US")
  assert us == countries.US

  // get the base Country type from both Alpha3Code and Alpha2Code and compare
  assert countries.from_alpha_3_code(usa) == countries.from_alpha_2_code(us)

  // get the base Country type from the numeric string
  let assert Ok(us) = countries.from_numeric_code("840")
  assert us == countries.UnitedStatesOfAmerica

  // attempt to get a Country type from an incorrect numeric code value
  let assert Error(countries.IncorrectNumericCode) =
    countries.from_numeric_code("<incorrect>")

  Nil
}
```

Further documentation can be found at <https://hexdocs.pm/countries>.
