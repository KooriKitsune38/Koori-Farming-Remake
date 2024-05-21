#> kf:blocks/powerbank/use_power

# Power Self
tag @s remove kf.Powered
execute if score .success k.Values matches 1 run tag @s add kf.Powered

# Check usage
function kf:blocks/powerbank/check_usage

# Raycast
scoreboard players set .rayType kf.ReceivingPower 2
execute facing ~ ~ ~ if entity @p[distance=..2.5] run function kf:blocks/powerbank/debug/pre_ray