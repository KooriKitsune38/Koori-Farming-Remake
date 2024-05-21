#> kf:blocks/powerbank/retrieve_power

# Sort Type
scoreboard players operation @e[sort=nearest,limit=1,tag=kf.PowerBank,distance=..50] kf.ReceivingPower += .powerSupply kf.ReceivingPower

# Raycast
scoreboard players set .rayType kf.ReceivingPower 1
execute at @e[sort=nearest,limit=1,tag=kf.PowerBank,distance=..50] if entity @p[distance=..2.5] run function kf:blocks/powerbank/debug/pre_ray