#> kf:blocks/sprinkler/inactive/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:warden_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Sprinkler","italic":false}'},EntityTag:{id:"block_display",Tags:[kf.Sprinkler,kf.RequiresPower,kf.LowUsage],block_state:{Name:"minecraft:cornflower",Properties:{}},teleport_duration:1,transformation:{translation:[-0.5f,1.5f,0.5f],left_rotation:[1f,0f,0f,0.399f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}}}}

# Kill
kill @s

# Particle
particle block cornflower ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
playsound block.crop.break block @a ~ ~ ~ 1 0.5