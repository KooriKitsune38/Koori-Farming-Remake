#> kf:blocks/watermill/sofia5_check

# THIS IS UNUSED, BUT HERE TO GIVE CREDITS
# TRULY A QUEEN OMG

    #> X AXIS
    execute if block ~ ~ ~ oak_fence[west=true] run tag @s add x_axis
    execute if block ~ ~ ~ oak_fence[east=true] run tag @s add x_axis

    #> Y AXIS
    execute if block ~ ~ ~ oak_fence[north=true] run tag @s add z_axis
    execute if block ~ ~ ~ oak_fence[south=true] run tag @s add z_axis



execute if block ~ ~-1 ~ water[level=7] run scoreboard players set .level k.Values 1
execute if block ~ ~-1 ~ water[level=6] run scoreboard players set .level k.Values 2
execute if block ~ ~-1 ~ water[level=5] run scoreboard players set .level k.Values 3
execute if block ~ ~-1 ~ water[level=4] run scoreboard players set .level k.Values 4
execute if block ~ ~-1 ~ water[level=3] run scoreboard players set .level k.Values 5
execute if block ~ ~-1 ~ water[level=2] run scoreboard players set .level k.Values 6
execute if block ~ ~-1 ~ water[level=1] run scoreboard players set .level k.Values 7
execute if block ~ ~-1 ~ water[level=0] run scoreboard players set .level k.Values 8

execute if entity @s[tag=x_axis] run function kf:blocks/watermill/check_x
execute if entity @s[tag=z_axis] run function kf:blocks/watermill/check_z

execute if score .dir k.Values matches 0 run tag @s add not_moving
execute if score .dir k.Values matches 0 run tp @s[tag=z_axis] ~ ~ ~ ~90 ~ 
execute if score .dir k.Values matches 1 run tp @s[tag=x_axis] ~ ~ ~ 180 ~
execute if score .dir k.Values matches 1 run tp @s[tag=z_axis] ~ ~ ~ 90 ~
execute if score .dir k.Values matches -1 run tp @s[tag=z_axis] ~ ~ ~ -90 ~

# Check X
execute if block ~ ~-1 ~1 water[level=7] run scoreboard players remove .level k.Values 1
execute if block ~ ~-1 ~1 water[level=6] run scoreboard players remove .level k.Values 2
execute if block ~ ~-1 ~1 water[level=5] run scoreboard players remove .level k.Values 3
execute if block ~ ~-1 ~1 water[level=4] run scoreboard players remove .level k.Values 4
execute if block ~ ~-1 ~1 water[level=3] run scoreboard players remove .level k.Values 5
execute if block ~ ~-1 ~1 water[level=2] run scoreboard players remove .level k.Values 6
execute if block ~ ~-1 ~1 water[level=1] run scoreboard players remove .level k.Values 7
execute if block ~ ~-1 ~1 water[level=0] run scoreboard players remove .level k.Values 8
execute if score .level k.Values matches 0 run scoreboard players set .dir k.Values 0
execute if score .level k.Values matches 1.. run scoreboard players set .dir k.Values 1
execute if score .level k.Values matches ..-1 run scoreboard players set .dir k.Values -1
execute unless block ~ ~ ~1 water run scoreboard players set .dir k.Values -1

# Check Z
execute if block ~1 ~-1 ~ water[level=7] run scoreboard players remove .level k.Values 1
execute if block ~1 ~-1 ~ water[level=6] run scoreboard players remove .level k.Values 2
execute if block ~1 ~-1 ~ water[level=5] run scoreboard players remove .level k.Values 3
execute if block ~1 ~-1 ~ water[level=4] run scoreboard players remove .level k.Values 4
execute if block ~1 ~-1 ~ water[level=3] run scoreboard players remove .level k.Values 5
execute if block ~1 ~-1 ~ water[level=2] run scoreboard players remove .level k.Values 6
execute if block ~1 ~-1 ~ water[level=1] run scoreboard players remove .level k.Values 7
execute if block ~1 ~-1 ~ water[level=0] run scoreboard players remove .level k.Values 8
execute if score .level k.Values matches 0 run scoreboard players set .dir k.Values 0
execute if score .level k.Values matches 1.. run scoreboard players set .dir k.Values 1
execute if score .level k.Values matches ..-1 run scoreboard players set .dir k.Values -1
execute unless block ~1 ~ ~ water run scoreboard players set .dir k.Values -1
