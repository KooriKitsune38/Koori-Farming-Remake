#> kf:blocks/watermill/adjust_schedule

# Execute as watermill, adjust
execute as @e[type=block_display,tag=kf.WaterMill] at @s positioned ~ ~-1 ~ if block ~ ~ ~ water rotated ~90 ~ run function kf:blocks/watermill/check_right

# Schedule this
schedule function kf:blocks/watermill/adjust_schedule 5s replace