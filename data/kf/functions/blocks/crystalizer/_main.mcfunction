#> kf:blocks/crystalizer/_main

# Place if tag .temp
execute if entity @s[tag=.temp] align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #kf:block_placeable run function kf:blocks/crystalizer/_place

# Generation
execute if entity @s[tag=kf.Powered] run function kf:blocks/crystalizer/active

# If no chsieled stone brick, kill
execute unless block ~ ~ ~ chiseled_stone_bricks run function kf:blocks/crystalizer/_remove