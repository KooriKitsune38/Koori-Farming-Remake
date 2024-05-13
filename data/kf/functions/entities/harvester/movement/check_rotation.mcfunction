#> kf:entities/harvester/movement/check_rotation

# Rotation Blocks
execute if block ~ ~-1 ~ magenta_glazed_terracotta run function kf:entities/harvester/movement/rotate_harvester

# Continue
execute at @s run function kf:entities/harvester/movement/check_surroundings