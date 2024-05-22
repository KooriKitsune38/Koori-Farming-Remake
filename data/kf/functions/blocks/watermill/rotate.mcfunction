#> kf:blocks/watermill/rotate

data modify entity @s teleport_duration set value 15

# Look down
execute run tp @s ~ ~ ~ ~ ~-15
# If up
data modify entity @s[x_rotation=-90..-80] teleport_duration set value 0
execute if entity @s[x_rotation=-90..-80] run tp @s ~ ~ ~ ~ 90