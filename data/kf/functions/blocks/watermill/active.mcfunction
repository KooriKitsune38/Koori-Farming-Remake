#> kf:blocks/watermill/active

# Tag add
tag @s add kf.Active

# Rotate
#execute at @s run function kf:blocks/watermill/rotate

# Power
scoreboard players set .powerSupply kf.ReceivingPower 50
function kf:blocks/powerbank/retrieve_power

# Visuals
    #> Particles
    particle cloud ~ ~-1 ~ .2 .3 .2 0.01 1 normal
    #> Sound
    playsound weather.rain.above block @a ~ ~ ~ 0.02 1