#> kf:blocks/trading_post/_place

# If one or more entities
    execute store result score .nearbyEntities k.Values if entity @e[distance=...5,tag=kf.TradingPost]
    execute if score .nearbyEntities k.Values matches 2.. run function kf:blocks/trading_post/_remove

# Tp 
tp ~ ~ ~

# Place block
fill ~ ~ ~ ~ ~ ~ detector_rail replace air

# Sound
playsound block.scaffolding.place block @a ~ ~ ~ 1 2

# Tag
tag @s add kf.Placed 