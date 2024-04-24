#> kf:blocks/collector/_main

# Place if tag .temp
execute if entity @s[tag=.temp] align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #kf:block_placeable run function kf:blocks/collector/_place

# If no barrel, kill
execute unless block ~ ~ ~ barrel run function kf:blocks/collector/_remove

# Tag if full
execute store result score .slotsOccupied k.Values run data get block ~ ~ ~ Items
tag @s remove kf.Full
execute if score .slotsOccupied k.Values matches 27.. run tag @s add kf.Full