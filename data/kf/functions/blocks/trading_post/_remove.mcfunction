#> kf:blocks/trading_post/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:ocelot_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Trading Post","italic":false}'},EntityTag:{id:"block_display",Rotation:[0f,0f],Tags:[kf.RequiresPower,kf.TradingPost,kf.LowUsage],block_state:{Name:"scaffolding"},start_interpolation:-1,transformation:{left_rotation:[0.0f,0.0f,1.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,0.503f,1.0f],translation:[0.5f,0.01f,-0.5f]}}}}}

# Kill
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:powered_rail",Count:1b}},distance=..2,limit=1]

# Remove fence
execute if block ~ ~ ~ powered_rail[waterlogged=true] run setblock ~ ~ ~ water
fill ~ ~ ~ ~ ~ ~ air replace powered_rail

# Particle
particle block powered_rail ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
playsound block.anvil.break block @a ~ ~ ~ 1 2