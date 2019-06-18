# facets
Some helpful functions that for the Crystal Languge

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     facets:
       github: wontruefree/facets
   ```

2. Run `shards install`

## Usage

```crystal
require "facets"
```

### Enumerable
#### reduce?
Similar to `reduce?`, however instead of returning `nil` when the input is empty, return the initial value of the accumulator.
```crystal
([] of Int32).reduce?(10) { |acc, i| acc + i } # => 10
 ```

## Contributors

- [Jack Thorne](https://github.com/wontruefree) - creator and maintainer
