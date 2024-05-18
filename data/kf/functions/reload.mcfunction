#> kf:reload

# Scoreboard
    #> Objectives
    scoreboard objectives add kf.WateringTimer dummy
    scoreboard objectives add kf.HarvesterMovement dummy
    scoreboard objectives add k.Values dummy
    scoreboard objectives add kf.Power dummy
    scoreboard objectives add kf.ReceivingPower dummy
    scoreboard objectives add kf.PowerUsage dummy
    scoreboard objectives add kf.PowerUUIDs dummy
    scoreboard objectives add kf.Crystalization dummy
    #> Players
    scoreboard players set .bonemealInterval kf.WateringTimer 200
    scoreboard players set .timerMultiplier kf.WateringTimer 10

# Schedules
schedule function kf:humidity/humidity_schedule 1t replace
schedule function kf:blocks/watermill/adjust_schedule 1t replace
schedule function kf:entities/villagers/_schedule 1t replace