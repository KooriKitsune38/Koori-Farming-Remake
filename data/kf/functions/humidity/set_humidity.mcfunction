#> kf:humidity/set_humidity

# Random Value
$execute store result score .humidity k.Humidity run random value $(min)..$(max)

# Divide
scoreboard players set .10 k.Humidity 10
scoreboard players operation .humidity k.Humidity /= .10 k.Humidity

# Add to tickspeed
scoreboard players set .tickSpeed k.Humidity 10
scoreboard players operation .tickSpeed k.Humidity -= .humidity k.Humidity

# Set value to random tick
    #> Create Storage
    execute store result storage kf:temp tickSpeed int 1 run scoreboard players get .tickSpeed k.Humidity
    #> Set tickspeed
    function kf:humidity/set_tickspeed with storage kf:temp