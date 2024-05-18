#> kf:humidity/humidity_schedule

# Bossbar
    #> Humidity
    bossbar add k.humidity {"text":"Humidity","color":"aqua"}
    bossbar set k.humidity color white
    bossbar set k.humidity style notched_10
    bossbar set k.humidity visible true
    bossbar set k.humidity max 10

schedule function kf:humidity/humidity_schedule 60s