#> kf:blocks/windmill/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Wind Mill","italic":false}'},EntityTag:{id:"block_display",Rotation:[0f,0f],Tags:[kf.WindMill],block_state:{Name:"cobweb"},teleport_duration:15,transformation:{translation:[-1f,-1f,-1f],left_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],right_rotation:[0f,0f,0f,1f]}}}}}

# Kill
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:oak_fence",Count:1b}},distance=..2,limit=1]

# Remove fence
execute if block ~ ~ ~ oak_fence[waterlogged=true] run setblock ~ ~ ~ water
fill ~ ~ ~ ~ ~ ~ air replace oak_fence

# Particle
particle block oak_fence ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
playsound block.stem.break block @a ~ ~ ~ 1 2