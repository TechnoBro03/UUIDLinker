# UUID Linker
A datapack that can get the formatted hexadecimal string representation of the UUID of any entity.

## Usage
* ```/execute as @s run function uuid_linker:get_uuid```: Get UUID of any entity (replace @s with anything).
* ```/data get storage minecraft:uuid_linker UUID```: View the hexadecimal string representation.
* Use the hexadecimal string for dynamic entity selection using macros.

## Example
```
  # test.mcfunction
  execute as @p run function uuid_linker:get_uuid
  function macro with storage uuid_linker UUID

  # macro.mcfunction
  $execute as $(HexString) run say I'm not using a selector!
```
## Installation
## Installation
* Go to [Releases](https://github.com/TechnoBro03/UUIDLinker/releases)
* Find the desired release version.
* Download the ```UUIDLinker-X.X.X.zip``` ZIP file.
* Open Minecraft.
* Select the world you want to install the datapack to and click ```Edit``` -> ```Open world folder```.
* Open the ```datapacks``` folder, and place the ZIP file inside.
* Type ```/reload``` if you are in the world during the installation.
* The datapack should now be enabled and you should see an in-game message.
