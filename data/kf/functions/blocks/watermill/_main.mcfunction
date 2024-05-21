#> kf:blocks/watermill/_main

# If tag rotate, rotate
execute if entity @s[tag=.rotate] run function kf:blocks/watermill/adjust

# If no oak fence, kill
    #> No Block
    execute if entity @s[tag=!.temp] store success score .success k.Values unless block ~ ~ ~ oak_fence run function kf:blocks/watermill/_remove

# If tag temp, place
execute if entity @s[tag=.temp] align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #kf:block_placeable run function kf:blocks/watermill/_place

# Rotation
scoreboard players reset .success k.Values
execute rotated ~90 ~ positioned ~ ~-1 ~ if block ~ ~ ~ water run function kf:blocks/watermill/check_sides
tag @s remove kf.Active
execute if score .success k.Values matches 1 run function kf:blocks/watermill/active
