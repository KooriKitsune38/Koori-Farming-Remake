#> kf:blocks/powerbank/has_entities

# Set success
scoreboard players set .success k.Values 1

# Copy power expense
scoreboard players operation @s kf.PowerUsage = .powerExpense kf.Power

# Raycast
scoreboard players set .rayType kf.ReceivingPower 2
execute if entity @p[distance=..2.5] at @e[tag=kf.RequiresPower,tag=.temp,limit=1] run function kf:blocks/powerbank/debug/pre_ray