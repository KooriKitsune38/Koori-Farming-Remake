#> kf:blocks/collector/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:llama_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Collector","italic":false}'},EntityTag:{id:"marker",Tags:[kf.Collector]}}}}

# Kill
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b}},distance=..2,limit=1]

# Remove fence
fill ~ ~ ~ ~ ~ ~ air replace barrel

# Particle
#particle block barrel ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
#playsound block.wood.break block @a ~ ~ ~ 1 2