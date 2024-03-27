# UUID Hexer
A datapack that can get the formatted hexadecimal string representation of any entity UUID.

## Usage
* Use '/execute as @s run function uuid_hexer:get_uuid' to get the UUID of any entity (replace @s with anything)
* Use '/data get storage minecraft:uuid_hexer UUID' to get both the original UUID representation (int array) and the hexadecimal string
* Use the hexadecimal string for dynamic selectors using macros

## Example
```
  # test.mcfunction
  execute as @p run function uuid_hexer:get_uuid
  function macro with storare uuid_hexer UUID

  # macro.mcfunction
  $execute as $(HexString) run say I'm not using a selector!
```
