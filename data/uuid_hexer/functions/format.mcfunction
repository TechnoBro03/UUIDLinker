# Copy hex string
$data modify storage uuid_hexer Format.String set value $(String)

# Seperate hex string into predetermined groups
data modify storage uuid_hexer Format.Group0 set string storage uuid_hexer Format.String 0 8
data modify storage uuid_hexer Format.Group1 set string storage uuid_hexer Format.String 8 12
data modify storage uuid_hexer Format.Group2 set string storage uuid_hexer Format.String 12 16
data modify storage uuid_hexer Format.Group3 set string storage uuid_hexer Format.String 16 20
data modify storage uuid_hexer Format.Group4 set string storage uuid_hexer Format.String 20 32

# Concatinate all groups together, with dashes
function uuid_hexer:format_helper with storage uuid_hexer Format