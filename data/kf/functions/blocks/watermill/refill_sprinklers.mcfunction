#> kf:blocks/watermill/refill_sprinklers

# Fill cauldrons to nearby sprinklers
execute at @e[type=block_display,tag=kf.WaterMill,tag=kf.Active] as @e[type=block_display,tag=kf.Sprinkler,distance=..10,tag=!kf.noWaterRefill] at @s run fill ~ ~1 ~ ~ ~1 ~ water_cauldron[level=2] replace cauldron

# Schedule
schedule function kf:blocks/watermill/refill_sprinklers 60s replace