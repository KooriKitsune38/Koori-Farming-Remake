#> kf:entities/harvester/movement/pre_movement

# Move
execute align xyz positioned ~.5 ~.5 ~.5 rotated ~ 0 run function #kf:harvester/movement

# Store Rotation
execute store result score .rotation kf.HarvesterMovement run data get entity @s Rotation[0]
execute on passengers store result entity @s Rotation[0] float 1 run scoreboard players get .rotation kf.HarvesterMovement