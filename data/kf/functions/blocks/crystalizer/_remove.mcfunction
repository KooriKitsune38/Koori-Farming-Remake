#> kf:blocks/crystalizer/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:skeleton_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Crystalizer","italic":false}'},EntityTag:{id:"marker",Rotation:[0f,0f],Tags:[kf.Crystalizer,.temp,kf.RequiresPower,kf.HighUsage]}}}}

# Kill
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:chiseled_stone_bricks",Count:1b}},distance=..2,limit=1]

# Remove fence
fill ~ ~ ~ ~ ~ ~ air replace chiseled_stone_bricks

# Particle
#particle block barrel ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
#playsound block.wood.break block @a ~ ~ ~ 1 2