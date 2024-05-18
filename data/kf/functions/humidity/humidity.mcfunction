#> kf:humidity

# Set players
bossbar set k.humidity players @a

# Bossbar
    #> Setting value
    execute store result bossbar k.humidity value run scoreboard players get .humidity k.Humidity

# Scoreboards
    #> Getting time of day
    execute store result score time k.Humidity run time query daytime

# Setting Humidity
    execute if score time k.Humidity matches 1 run function code:set_humidity {min:45,max:85}
    execute if score time k.Humidity matches 4001 run function code:set_humidity {min:35,max:70}
    execute if score time k.Humidity matches 8001 run function code:set_humidity {min:35,max:60}
    execute if score time k.Humidity matches 12001 run function code:set_humidity {min:20,max:50}
    execute if score time k.Humidity matches 16001 run function code:set_humidity {min:10,max:40}
    execute if score time k.Humidity matches 20001 run function code:set_humidity {min:0,max:30}