#> kf:entities/harvester/_main

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

# Harvesting (If collector nearby)
    #> Return the collector, if tier list
    function kf:entities/harvester/harvesting/_tiers

    #> If success, then harvest
    execute if score .success k.Values matches 1 if entity @s[tag=kf.Powered] run function kf:entities/harvester/harvesting/check_crop