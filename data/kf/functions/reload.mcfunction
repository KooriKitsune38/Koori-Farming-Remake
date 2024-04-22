#> kf:reload

# Scoreboard
    #> Objectives
    scoreboard objectives add kf.WateringTimer dummy
    scoreboard objectives add kf.HarvesterMovement dummy
    scoreboard objectives add k.Values dummy
    scoreboard objectives add kf.Power dummy
    scoreboard objectives add kf.PowerUUIDs dummy
    #> Players
    scoreboard players set .bonemealInterval kf.WateringTimer 200
    scoreboard players set .timerMultiplier kf.WateringTimer 10
    scoreboard players set .powerMultiplier kf.Power 15