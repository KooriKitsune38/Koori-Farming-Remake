#> kf:entities/harvester/_main

# Player
ride @p[dx=0,nbt=!{FallDistance:0f},predicate=!kf:sneaking] mount @s[tag=!kf.NotRideable]

# Rotate
execute if entity @s[tag=kf.HasBobber] unless entity @e[type=fishing_bobber,distance=...5] run function kf:entities/harvester/_rotate
execute if entity @e[type=fishing_bobber,distance=...5] run tag @s add kf.HasBobber

# Movement
    #> Timer
    function kf:entities/harvester/movement/timer
    #> Move
    execute if score @s kf.HarvesterMovement matches ..0 if entity @s[tag=kf.Powered] align xyz positioned ~.5 ~.5 ~.5 rotated ~ 0 run function #kf:harvester/movement
    #> Store Rotation
    execute store result score .rotation kf.HarvesterMovement run data get entity @s Rotation[0]
    execute on passengers store result entity @s Rotation[0] float 1 run scoreboard players get .rotation kf.HarvesterMovement

    #> Debug Particles
    particle composter ^1 ^ ^ 0 0 0 1 1 normal @a[tag=debug]
    particle composter ^-1 ^ ^ 0 0 0 1 1 normal @a[tag=debug]
    particle composter ^ ^ ^1 0 0 0 1 1 normal @a[tag=debug]

# If there's a block, give resistance
execute if block ~ ~ ~ #kf:block_crop run effect give @s resistance 1 255 true

# Harvesting (If collector nearby)
    #> Return the collector, if tier list
    function kf:entities/harvester/harvesting/_tiers

    #> If success, then harvest
    execute if score .success k.Values matches 1 if entity @s[tag=kf.Powered] run function kf:entities/harvester/harvesting/check_crop