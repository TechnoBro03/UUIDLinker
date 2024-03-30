# UUID Linker
A datapack that can get the formatted hexadecimal string representation of the UUID of any entity.

## Usage
* ```/execute as @s run function uuid_linker:get_uuid```: Get UUID of any entity (replace @s with anything).
* ```/data get storage minecraft:uuid_linker UUID```: View both the original UUID representation (int array) and the hexadecimal string.
* ```/function uuid_linker:toggle_storing```: Toggle between storing and not storing UUIDs (enabled by default).
  * ```get_uuid``` is performance intensive. If called often (ex. ```per tick```) and/or on many entities (ex. ```@e[distance=..100]```), the game tick time will increase (over 3x slower*).
  * Storing the UUID will prevent re-calculating it, saving A LOT performance (virtually the same performance as without the datapack*).
* Use the hexadecimal string for dynamic entity selection using macros.

###### \* Performace metrics from personal PC when running ```/execute as @e[distance=..100] run function uuid_linker:get_uuid``` every tick. Actual tick time increased from 5ms -> 15ms avg.

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
