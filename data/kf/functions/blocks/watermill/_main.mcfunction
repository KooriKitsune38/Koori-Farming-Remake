#> kf:blocks/watermill/_main

# If tag rotate, rotate
execute if entity @s[tag=.rotate] run function kf:blocks/watermill/adjust

# If tag temp, place
execute if entity @s[tag=.temp] align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #kf:block_placeable run function kf:blocks/watermill/_place

# Rotation
execute if block ~ ~-1 ~ water run function kf:blocks/watermill/active

# If no oak fence, kill
execute unless block ~ ~ ~ oak_fence run kill @s