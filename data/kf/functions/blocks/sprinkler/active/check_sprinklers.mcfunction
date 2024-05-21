#> kf:blocks/sprinkler/active/check_sprinklers

# Retrieve nearby sprinklers
execute positioned ~-3 ~-3 ~-3 store result score .nearbySprinklers kf.WateringTimer if entity @e[type=block_display,tag=kf.Sprinkler,tag=kf.Active,dx=7,dz=7,dy=3]

# Check amount
    #> Two sprinkler
    tag @s remove kf.noWaterRefill
    execute if score .nearbySprinklers kf.WateringTimer matches 2.. run tag @s add kf.noWaterRefill
    #> Three or more sprinklers
    tag @s remove kf.noBonemeal
    execute if score .nearbySprinklers kf.WateringTimer matches 3.. run tag @s add kf.noBonemeal