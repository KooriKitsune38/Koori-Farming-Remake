#> kf:blocks/powerbank/retrieve_power

# Sort Type
    #> Windmill
    execute if entity @s[tag=kf.WindMill] run scoreboard players add @e[distance=..0.00001,sort=nearest,limit=1,tag=kf.PowerBank] kf.ReceivingPower 100
    #> Watermill
    execute if entity @s[tag=kf.WaterMill,tag=kf.Active] run scoreboard players add @e[distance=..0.00001,sort=nearest,limit=1,tag=kf.PowerBank] kf.ReceivingPower 25

# Raycast
scoreboard players set .rayType kf.ReceivingPower 1
execute facing ~ ~ ~ if entity @p[distance=..2.5] run function kf:blocks/powerbank/debug/pre_ray