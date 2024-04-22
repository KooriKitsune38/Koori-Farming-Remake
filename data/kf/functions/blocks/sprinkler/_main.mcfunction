#> kf:blocks/sprinkler/_main

# If water on top
execute if block ~ ~1 ~ water_cauldron if entity @s[tag=kf.Powered] run function kf:blocks/sprinkler/active/water_blocks
execute unless block ~ ~1 ~ water_cauldron run tag @s remove kf.Active

# Kill Conditions
    #> Unless there's a cauldron
    execute unless block ~ ~1 ~ #kf:sprinkler run function kf:blocks/sprinkler/inactive/_remove
    execute unless block ~ ~ ~ air run function kf:blocks/sprinkler/inactive/_remove
    #> If one or more entities
    execute store result score .nearbySprinklers kf.WateringTimer if entity @e[distance=...5,tag=kf.Sprinkler]
    execute if score .nearbySprinklers kf.WateringTimer matches 2.. run function kf:blocks/sprinkler/inactive/_remove