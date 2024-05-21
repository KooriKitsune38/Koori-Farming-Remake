#> kf:blocks/watermill/active

# Tag add
tag @s add kf.Active

# Rotate
execute at @s run function kf:blocks/watermill/rotate

# Fill cauldrons to nearby sprinklers
execute as @e[type=block_display,tag=kf.Sprinkler,distance=..10,tag=!kf.noWaterRefill] at @s run fill ~ ~1 ~ ~ ~1 ~ water_cauldron[level=2] replace cauldron

# Visuals
    #> Particles
    particle cloud ~ ~-1 ~ .2 .3 .2 0.01 1 normal
    #> Sound
    playsound weather.rain.above block @a ~ ~ ~ 0.02 1
