#> kf:entities/harvester/movement/rotate_harvester

# Check Rotation
    #> North
    execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~ 0 ~
    #> East
    execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=east] run tp @s ~ ~ ~ 90 ~
    #> South
    execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~ 180 ~
    #> West
    execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=west] run tp @s ~ ~ ~ -90 ~