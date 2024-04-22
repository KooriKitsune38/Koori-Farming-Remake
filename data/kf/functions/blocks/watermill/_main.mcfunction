#> kf:blocks/watermill/_main

# If tag rotate, rotate
execute if entity @s[tag=.rotate] run function kf:blocks/watermill/adjust

# If tag temp, place
execute if entity @s[tag=.temp] align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #kf:block_placeable run function kf:blocks/watermill/_place

# Rotation
execute if block ~ ~-1 ~ water run function kf:blocks/watermill/active

# If no oak fence, kill
    #> No Block
    execute unless block ~ ~ ~ oak_fence run function kf:blocks/watermill/_remove
    #> If one or more entities
    execute store result score .nearbyWatermills k.Values if entity @e[distance=..2,tag=kf.WaterMill]
    execute if score .nearbyWatermills k.Values matches 2.. run function kf:blocks/watermill/_remove