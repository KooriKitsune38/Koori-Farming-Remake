#> kf:blocks/collector/_main

# Place if tag .temp
execute if entity @s[tag=!kf.Placed] align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #kf:block_placeable run function kf:blocks/collector/_place

# If no barrel, kill
execute unless block ~ ~ ~ barrel run function kf:blocks/collector/_remove

# Tag if full
tag @s remove kf.Full
execute if data block ~ ~ ~ Items[26] run tag @s add kf.Full