#> kf:blocks/watermill/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:allay_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Water Mill","italic":false}'},EntityTag:{id:"block_display",Rotation:[0f,0f],Tags:[kf.WaterMill],block_state:{Name:"oak_trapdoor"},teleport_duration:15,transformation:{translation:[-.2f,1f,-1f],left_rotation:[0f,0f,-0.703f,0.711f],scale:[2f,2f,2f],right_rotation:[0f,0f,0f,1f]}}}}}

# Kill
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:oak_fence",Count:1b}},distance=..2,limit=1]

# Remove fence
execute if block ~ ~ ~ oak_fence[waterlogged=true] run setblock ~ ~ ~ water
fill ~ ~ ~ ~ ~ ~ air replace oak_fence

# Particle
particle block oak_fence ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
playsound block.wooden_button.click_off block @a ~ ~ ~ 1 2