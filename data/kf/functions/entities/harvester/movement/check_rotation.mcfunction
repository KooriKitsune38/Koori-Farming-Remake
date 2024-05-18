#> kf:entities/harvester/movement/check_rotation

# Rotation Blocks
execute if block ~ ~-1 ~ magenta_glazed_terracotta run function kf:entities/harvester/movement/rotate_harvester
execute at @s if block ^ ^ ^1 magenta_glazed_terracotta run tp ~ ~1 ~
execute at @s if block ^ ^ ^1 air if block ^ ^-1 ^1 air if block ^ ^-2 ^1 magenta_glazed_terracotta run tp ~ ~-1 ~

# Continue
execute at @s run function kf:entities/harvester/movement/check_surroundings