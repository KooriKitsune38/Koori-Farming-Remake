#> kf:blocks/collector/get_coords

scoreboard players set .success k.Values 1

# Get Coords
    data merge storage kf:position {x:0,y:0,z:0}
    #> X
    execute store result storage kf:position x int 1 run data get entity @s Pos[0]
    #> Y
    execute store result storage kf:position y int 1 run data get entity @s Pos[1]
    #> Z
    execute store result storage kf:position z int 1 run data get entity @s Pos[2]