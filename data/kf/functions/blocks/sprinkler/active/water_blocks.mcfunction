#> kf:blocks/sprinkler/active/water_blocks

# Add Tag
tag @s add kf.Active

# Rotate
tp @s ~ ~ ~ ~5 ~

# Retrieve nearby sprinklers
execute positioned ~-3 ~-3 ~-3 store result score .nearbySprinklers kf.WateringTimer if entity @e[type=block_display,tag=kf.Sprinkler,tag=kf.Active,dx=7,dz=7,dy=3]
execute if score .nearbySprinklers kf.WateringTimer matches 1.. run function kf:blocks/sprinkler/active/check_sprinklers

# Scoreboard
    #> Add to timer
    execute store result score .modulo kf.WateringTimer run scoreboard players operation @s kf.WateringTimer += .nearbySprinklers kf.WateringTimer
    #> Calculate modulo
    scoreboard players operation .modulo kf.WateringTimer %= .bonemealInterval kf.WateringTimer
    #> If timer is more than 24000, remove water
    execute if score @s kf.WateringTimer matches 24000.. positioned ~ ~1 ~ run function kf:blocks/sprinkler/active/reduce_water

# Bonemeal
execute if score .modulo kf.WateringTimer matches 0 unless score .nearbySprinklers kf.WateringTimer matches 3.. if predicate kf:bonemeal run function kf:blocks/sprinkler/active/bonemeal

# Particles
    #> Ambient
    particle falling_water ^ ^ ^1 .1 .2 .1 1 1 normal