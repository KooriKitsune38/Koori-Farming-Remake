#> kf:reload

# Scoreboard
    #> Objectives
    scoreboard objectives add kf.WateringTimer dummy
    scoreboard objectives add kf.HarvesterMovement dummy
    scoreboard objectives add k.Values dummy
    scoreboard objectives add kf.Power dummy
    scoreboard objectives add kf.ReceivingPower dummy
    scoreboard objectives add kf.PowerUsage dummy
    scoreboard objectives add kf.UsingBank dummy
    scoreboard objectives add kf.PowerUUIDs dummy
    scoreboard objectives add kf.Crystalization dummy
    #> Players
    scoreboard players set .bonemealInterval kf.WateringTimer 200
    scoreboard players set .timerMultiplier kf.WateringTimer 10

# Storage
data merge storage kf:trading {prices:{"minecraft:wheat":6,"minecraft:beetroot":8,"minecraft:carrot":12,"minecraft:potato":12,"minecraft:sweet_berries":45,"minecraft:sugar_cane":35,"minecraft:cactus":35}}

# Schedules
    #> Harvester
    schedule function kf:entities/harvester/movement/schedule 1t replace
    #> Sprinkler
    schedule function kf:blocks/sprinkler/active/irrigation 1t replace
    schedule function kf:blocks/sprinkler/active/check_sprinklers_schedule 1t replace
    schedule function kf:blocks/sprinkler/active/water_schedule 60s replace
    schedule function kf:blocks/sprinkler/active/bonemeal_schedule 10s replace
    #> Humidity
    schedule function kf:humidity/humidity_schedule 1t replace
    #> Watermill
    schedule function kf:blocks/watermill/adjust_schedule 1t replace
    schedule function kf:blocks/watermill/refill_sprinklers 1t replace
    #> Windmill
    schedule function kf:blocks/mill_rotation 15t replace
    #> Crystalizer
    schedule function kf:blocks/crystalizer/schedule 300s replace
    #> Villagers Replace
    schedule function kf:entities/villagers/_schedule 1t replace