#> kf:entities/harvester/harvesting/get_coords

# Get Coords
    #> X
    execute store result storage kf:position x int 1 run data get entity @s Pos[0]
    #> Y
    execute store result storage kf:position y int 1 run data get entity @s Pos[1]
    #> Z
    execute store result storage kf:position z int 1 run data get entity @s Pos[2]