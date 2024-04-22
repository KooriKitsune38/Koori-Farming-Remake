#> kf:entities/harvester/_main

# Movement
    #> Timer
    function kf:entities/harvester/movement/timer
    #> Move
    execute if score @s kf.HarvesterMovement matches ..0 align xyz positioned ~.5 ~.5 ~.5 rotated ~ 0 run function #kf:harvester/movement
    #> Store Rotation
    execute store result score .rotation kf.HarvesterMovement run data get entity @s Rotation[0]
    execute on passengers store result entity @s Rotation[0] float 1 run scoreboard players get .rotation kf.HarvesterMovement

    particle composter ^1 ^ ^
    particle composter ^-1 ^ ^
    particle composter ^ ^ ^1