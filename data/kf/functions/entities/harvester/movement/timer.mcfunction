#> kf:entities/harvester/movement/timer

# Scoreboard
    #> Check the tier
    execute unless score @s kf.HarvesterMovement matches 1.. run function kf:entities/harvester/movement/assign_timer
    #> Remove score
    scoreboard players remove @s kf.HarvesterMovement 1