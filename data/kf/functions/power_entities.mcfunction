#> kf:power_entities

# Check usage
function kf:blocks/powerbank/check_usage

# Check nearby powerbank
scoreboard players reset .success k.Values
execute as @e[type=item_display,tag=kf.PowerBank,distance=..50,limit=1,sort=nearest] unless predicate kf:inactive_powerbank run function kf:blocks/powerbank/use_power

# Raycast
scoreboard players set .rayType kf.ReceivingPower 2
execute at @e[type=item_display,tag=kf.PowerBank,distance=..50,limit=1,sort=nearest] if entity @p[distance=..2.5] run function kf:blocks/powerbank/debug/pre_ray

tag @s remove kf.Powered
execute if score .success k.Values matches 1 run tag @s add kf.Powered