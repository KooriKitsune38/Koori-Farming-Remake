#> kf:blocks/sprinkler/active/water_schedule

# Sprinkler
execute as @e[type=block_display,tag=kf.Sprinkler,tag=kf.Active] at @s positioned ~ ~1 ~ run function kf:blocks/sprinkler/active/reduce_water

# Schedule
schedule function kf:blocks/sprinkler/active/water_schedule 1200s replace