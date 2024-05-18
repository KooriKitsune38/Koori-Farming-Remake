#> kf:humidity/humidity_schedule

# Bossbar
    #> Humidity
    bossbar add humidity {"text":"Humidity","color":"gold"}
    bossbar set humidity color red
    bossbar set humidity style progress
    bossbar set humidity visible true
    bossbar set humidity max 10

schedule function kf:humidity/humidity_schedule 60s