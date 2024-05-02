#> kf:selectors/power_entities

# Check Usage
    #> Low
    execute if entity @s[tag=kf.LowUsage] run scoreboard players add .powerExpense kf.Power 15
    #> Medium
    execute if entity @s[tag=kf.MediumUsage] run scoreboard players add .powerExpense kf.Power 50
    #> High
    execute if entity @s[tag=kf.HighUsage] run scoreboard players add .powerExpense kf.Power 100

# As the Powerbank
scoreboard players reset .success k.Values
tag @s add .temp
execute as @e[type=item_display,tag=kf.PowerBank,distance=..30,limit=1,sort=nearest] at @s run function kf:blocks/powerbank/has_entities
tag @s remove .temp

# check powerbank
    #> Doesn't exist
    execute unless score .success k.Values matches 1 run tag @s remove kf.Powered
    #> Exists
    execute if score .success k.Values matches 1 run tag @s add kf.Powered