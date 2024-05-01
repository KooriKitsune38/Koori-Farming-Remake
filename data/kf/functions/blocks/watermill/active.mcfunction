#> kf:blocks/watermill/active

# Rotate
execute at @s run function kf:blocks/watermill/rotate

# Nearest Bank
scoreboard players set .powerSupply kf.ReceivingPower 20
execute as @e[type=item_display,distance=..50,tag=kf.PowerBank,tag=!kf.Inactive,limit=1,sort=nearest] run function kf:blocks/powerbank/power

# Fill cauldrons to nearby sprinklers
execute as @e[type=block_display,tag=kf.Sprinkler,distance=..10,tag=!kf.noWaterRefill] at @s run fill ~ ~1 ~ ~ ~1 ~ water_cauldron[level=2] replace cauldron

# Visuals
    #> Particles
    particle cloud ~ ~-1 ~ .2 .3 .2 0.01 1 normal
    #> Sound
    playsound weather.rain.above block @a ~ ~ ~ 0.02 1
