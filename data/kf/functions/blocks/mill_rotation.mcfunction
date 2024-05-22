#> kf:blocks/mill_rotation

# Rotate
execute as @e[type=block_display,tag=kf.WindMill] at @s run tp @s ~ ~ ~ ~120 ~
execute as @e[type=block_display,tag=kf.WaterMill,tag=kf.Active] at @s run function kf:blocks/watermill/rotate

# Schedule
schedule function kf:blocks/mill_rotation 15t replace