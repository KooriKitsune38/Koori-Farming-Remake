#> kf:blocks/collector/_place

# Setblock barrel
setblock ~ ~ ~ barrel[facing=up]

# Position at center
tp ~ ~ ~

# Tag remove
tag @s remove .temp

# Copy UUID
execute store result score @s kf.CollectorUUIDs run data get entity @s UUID[0] 