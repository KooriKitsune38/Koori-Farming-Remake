#> kf:blocks/crystalizer/active

# Timer
    #> Check the tier
    execute unless score @s kf.Crystalization matches 1.. run function kf:blocks/crystalizer/assign_timer
    #> Remove score
    scoreboard players remove @s kf.Crystalization 1
    #> Generate
    execute if score @s kf.Crystalization matches ..0 positioned ~ ~1 ~ run function #kf:crystalizer/crystalize

# Particles depending on score
particle block cobblestone ~ ~1 ~ .1 0 .1 1 5 normal

# Sound
playsound block.stone.hit block @a[distance=..5] ~ ~ ~ 0.2 0.4