#> kf:blocks/watermill/_main

# If tag rotate, rotate
execute if entity @s[tag=.rotate] run function kf:blocks/watermill/adjust

# If tag temp, place
execute if entity @s[tag=.temp] align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #kf:block_placeable run function kf:blocks/watermill/_place

# Rotation
scoreboard players reset .success k.Values
execute rotated ~90 ~ positioned ~ ~-1 ~ if block ~ ~ ~ water run function kf:blocks/watermill/check_sides
execute if score .success k.Values matches 1 run function kf:blocks/watermill/active

# If no oak fence, kill
    #> No Block
    execute store success score .success k.Values unless block ~ ~1 ~ #kf:sprinkler unless block ~ ~ ~ oak_fence run function kf:blocks/watermill/_remove
    #> If one or more entities
    execute store result score .nearbyWatermills k.Values if entity @e[distance=..1.5,tag=kf.WaterMill]
    execute unless score .success k.Values matches 1 if score .nearbyWatermills k.Values matches 2.. run function kf:blocks/watermill/_remove