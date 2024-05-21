#> kf:blocks/crystalizer/_main

# Place if tag .temp
execute if entity @s[tag=!kf.Placed] align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #kf:block_placeable run function kf:blocks/crystalizer/_place

# If no chsieled stone brick, kill
execute unless block ~ ~ ~ chiseled_stone_bricks run function kf:blocks/crystalizer/_remove

# Generation
execute if entity @s[tag=kf.Powered] run function kf:blocks/crystalizer/active