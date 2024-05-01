#> kf:blocks/powerbank/power

# Power self
scoreboard players operation @s kf.ReceivingPower += .powerSupply kf.ReceivingPower

# Raycast
scoreboard players set .rayType kf.ReceivingPower 1
function kf:blocks/powerbank/debug/pre_ray