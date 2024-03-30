# Get the first character in the hex array
data modify storage uuid_linker Temp.Char set from storage uuid_linker Temp.CharArray[0]

# Append single character to the whole string
function uuid_linker:internal/string/append_char with storage uuid_linker Temp

# Remove the first character from the array
data remove storage uuid_linker Temp.CharArray[0]

# Repeat for all characters in array
execute if data storage uuid_linker Temp.CharArray[0] run function uuid_linker:internal/string/string_helper