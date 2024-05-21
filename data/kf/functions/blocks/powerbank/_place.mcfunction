#> kf:blocks/powerbank/_place

# tp
tp ~ ~ ~

# setblock
setblock ~ ~ ~ glass

# tag remove
tag @s add kf.Placed

# Merge data
data merge entity @s {Rotation:[0f,0f],CustomNameVisible:1b,item:{id:"beacon",Count:1b},transformation:{translation:[0.001f,-0.399f,0.001f],left_rotation:[0f,0f,0f,1f],scale:[0.999f,0.999f,0.999f],right_rotation:[0f,0f,0f,1f]}}

# Add power
scoreboard players add @s kf.Power 0

# Playsound
playsound block.glass.place block @a ~ ~ ~ 1 1
playsound block.beacon.activate block @a ~ ~ ~ 1 2