#> kf:entities/harvester/movement/check_sides
    
# If no tag, go right
tag @s[tag=!kf.GoLeft,tag=!kf.GoRight] add kf.GoRight

# Skip checks
    #> Go Right
    execute if entity @s[tag=kf.GoRight] unless block ^-1 ^-1 ^ #kf:bot_walkable if block ^-1 ^ ^ #kf:bot_passable positioned ^-2 ^ ^ if predicate kf:bot_can_walk rotated ~180 ~ store success score .success k.Values run function #kf:harvester/move_right
    #> Go Left
    execute unless score .success k.Values matches 1 if entity @s[tag=kf.GoLeft] unless block ^1 ^-1 ^ #kf:bot_walkable if block ^1 ^ ^ #kf:bot_passable positioned ^2 ^ ^ if predicate kf:bot_can_walk rotated ~180 ~ store success score .success k.Values run function #kf:harvester/move_left

# If score success true, return
execute if score .success k.Values matches 1 run return 1

# Check where to go
    #> Go Right
    execute if entity @s[tag=kf.GoRight] positioned ^-1 ^ ^ if predicate kf:bot_can_walk rotated ~180 ~ store success score .success k.Values run function #kf:harvester/move_right
    #> Go Left
    execute unless score .success k.Values matches 1 if entity @s[tag=kf.GoLeft] positioned ^1 ^ ^ if predicate kf:bot_can_walk rotated ~180 ~ store success score .success k.Values run function #kf:harvester/move_left

# If score success true, return
execute if score .success k.Values matches 1 run return 1

# Sides
    #> Go Right
    execute if entity @s[tag=kf.GoLeft] positioned ^-1 ^ ^ if predicate kf:bot_can_walk rotated ~180 ~ store success score .success k.Values run function #kf:harvester/move_right
    #> Go Left
    execute unless score .success k.Values matches 1 if entity @s[tag=kf.GoRight] positioned ^1 ^ ^ if predicate kf:bot_can_walk rotated ~180 ~ store success score .success k.Values run function #kf:harvester/move_left