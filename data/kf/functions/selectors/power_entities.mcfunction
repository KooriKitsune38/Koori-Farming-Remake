#> kf:selectors/power_entities

# As the Powerbank
scoreboard players reset .success k.Values
tag @s add .temp
scoreboard players reset .powerExpense kf.PowerUsage
execute as @e[type=item_display,tag=kf.PowerBank,distance=..30,limit=1,sort=nearest] at @s run function kf:blocks/powerbank/has_entities
tag @s remove .temp

# check powerbank
    #> Exists
    execute if score .success k.Values matches 1 run tag @s add kf.Powered
    #> Doesn't exist
    execute unless score .success k.Values matches 1 run tag @s remove kf.Powered