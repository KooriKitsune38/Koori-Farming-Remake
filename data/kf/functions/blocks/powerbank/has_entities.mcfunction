#> kf:blocks/powerbank/has_entities

# Set success
execute if entity @s[scores={kf.Power=1..}] run scoreboard players set .success k.Values 1

# Check usage
execute as @e[tag=kf.RequiresPower,tag=.temp,limit=1] run function kf:blocks/powerbank/check_usage

# Copy power expense
scoreboard players operation @s kf.PowerUsage += .powerExpense kf.PowerUsage

tellraw @a {"score":{"name":"@s","objective":"kf.PowerUsage"}}

# Raycast
scoreboard players set .rayType kf.ReceivingPower 2
execute if entity @p[distance=..2.5] at @e[tag=kf.RequiresPower,tag=.temp,limit=1] run function kf:blocks/powerbank/debug/pre_ray