#> kf:blocks/sprinkler/active/reduce_water

# Reset scoreboard
scoreboard players reset @s kf.WateringTimer

# Setblock
execute if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=1]
execute if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ water_cauldron[level=2]

# Playsound
playsound item.bucket.empty block @a ~ ~ ~ 1 1