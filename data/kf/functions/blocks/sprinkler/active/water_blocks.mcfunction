#> kf:blocks/sprinkler/active/water_blocks

# Add Tag
tag @s add kf.Active

# Rotate
tp @s ~ ~ ~ ~5 ~

# Particles
    #> Ambient
    particle falling_water ^ ^ ^1 .1 .2 .1 1 1 normal
    #> No Refill
    execute if entity @s[tag=kf.noWaterRefill,tag=!kf.noBonemeal] run particle bubble ~ ~ ~ .25 .25 .25 0 1 normal
    #> No Bonemeal
    execute if entity @s[tag=kf.noBonemeal] run particle smoke ~ ~1 ~ .5 .5 .5 0 1 normal