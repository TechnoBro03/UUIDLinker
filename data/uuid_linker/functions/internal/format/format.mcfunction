# Seperate string into  groups
data modify storage uuid_linker Temp.Group0 set string storage uuid_linker Temp.String 0 8
data modify storage uuid_linker Temp.Group1 set string storage uuid_linker Temp.String 8 12
data modify storage uuid_linker Temp.Group2 set string storage uuid_linker Temp.String 12 16
data modify storage uuid_linker Temp.Group3 set string storage uuid_linker Temp.String 16 20
data modify storage uuid_linker Temp.Group4 set string storage uuid_linker Temp.String 20 32

# Concatenate all groups together, with dashes
function uuid_linker:internal/format/format_helper with storage uuid_linker Temp