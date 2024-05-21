#> kf:entities/harvester/movement/schedule

# Harvester
execute as @e[type=slime,tag=kf.Harvester,tag=kf.Powered] at @s run function kf:entities/harvester/movement/pre_movement

# Schedule
schedule function kf:entities/harvester/movement/schedule 2s replace