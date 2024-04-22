#> kf:blocks/watermill/rotate

# Look down
execute run tp @s ~ ~ ~ ~ ~-1
# If up
execute if entity @s[x_rotation=-90] run tp @s ~ ~ ~ ~ 90