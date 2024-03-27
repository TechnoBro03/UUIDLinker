# UUID Linker
A datapack that can get the formatted hexadecimal string representation of the UUID of any entity.

## Usage
* Use '/execute as @s run function uuid_linker:get_uuid' to get the UUID of any entity (replace @s with anything)
* Use '/data get storage minecraft:uuid_linker UUID' to get both the original UUID representation (int array) and the hexadecimal string
* Use the hexadecimal string for dynamic entity selection using macros

## Example
```
  # test.mcfunction
  execute as @p run function uuid_linker:get_uuid
  function macro with storage uuid_linker UUID

  # macro.mcfunction
  $execute as $(HexString) run say I'm not using a selector!
```
## Installation
* Click "Code" -> "Download ZIP".
* Copy the folder within the ZIP file.
* Open Minecraft.
* Select the world you want to install the datapack to, click "Edit" -> "Open world folder".
* Open the "datapacks" folder, and paste the folder inside.
* Type /reload if you are in the world during the installation.
* The pack should now be enabled in the world and you should see an in-game message.

## [Releases](https://github.com/TechnoBro03/UUIDLinker/releases)
