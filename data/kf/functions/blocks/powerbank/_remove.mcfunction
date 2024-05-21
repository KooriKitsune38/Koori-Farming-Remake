#> kf:blocks/powerbank/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Power Bank","italic":false}'},EntityTag:{id:"item_display",Rotation:[0f,0f],Tags:[kf.PowerBank]}}}}

# Kill
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:glass",Count:1b}},distance=..2,limit=1]

# Remove fence
fill ~ ~ ~ ~ ~ ~ air replace glass

# Remove
execute store result score .tempUUID kf.PowerUUIDs run data get entity @s UUID[0]
    #> No Tier
    execute as @e[tag=kf.Powered,distance=..50] if score @s kf.PowerUUIDs = .tempUUID kf.PowerUUIDs run function kf:blocks/powerbank/unpower_entities

# Particle
particle block glass ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
playsound block.beacon.deactivate block @a ~ ~ ~ 1 2