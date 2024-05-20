#> kf:blocks/sprinkler/active/check_sprinklers

execute if score .nearbySprinklers kf.WateringTimer matches 3.. run scoreboard players operation .nearbySprinklers kf.WateringTimer *= .timerMultiplier kf.WateringTimer
    #> Two sprinkler
    tag @s remove kf.noWaterRefill
    execute if score .nearbySprinklers kf.WateringTimer matches 2 run function kf:blocks/sprinkler/active/double_sprinkler
    #> Three or more sprinklers
    execute if score .nearbySprinklers kf.WateringTimer matches 3.. run function kf:blocks/sprinkler/active/triple_sprinkler
