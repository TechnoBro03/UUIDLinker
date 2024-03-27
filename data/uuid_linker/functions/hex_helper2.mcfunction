# Use "look-up table" to get corresponding hexadecimal character
$data modify storage uuid_linker Hex.Array append from storage uuid_linker Hex.Table[$(Char)]