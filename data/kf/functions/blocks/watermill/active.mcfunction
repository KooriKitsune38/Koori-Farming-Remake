#> kf:blocks/watermill/active

# Rotate
execute at @s run function kf:blocks/watermill/rotate

# Add to nearest bank
scoreboard players add @e[type=item_display,distance=..50,tag=kf.PowerBank,limit=1,sort=nearest,scores={kf.Power=0..}] kf.Power 20
scoreboard players add @e[type=item_display,distance=..50,tag=kf.PowerBank,limit=1,sort=nearest,scores={kf.Power=..-1}] kf.Power 1

# Fill cauldrons to nearby sprinklers
execute as @e[type=block_display,tag=kf.Sprinkler,distance=..10] at @s run fill ~ ~1 ~ ~ ~1 ~ water_cauldron[level=3] replace cauldron

# Visuals
    #> Particles
    particle cloud ~ ~-1 ~ .2 .3 .2 0.01 1 normal
    #> Sound
    playsound weather.rain.above block @a ~ ~ ~ 0.02 1
