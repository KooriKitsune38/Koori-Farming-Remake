#> kf:entities/harvester/movement/check_sides

# Sides
    #> Go Right
    execute unless block ^-1 ^ ^ #kf:bot_walkable positioned ^1 ^ ^ if block ~ ~ ~ #kf:bot_walkable rotated ~180 ~ positioned ~ ~1 ~ store success score .success k.Values run function #kf:harvester/move_right
    #> Go Left
    execute unless score .success k.Values matches 1 unless block ^1 ^ ^ #kf:bot_walkable positioned ^-1 ^ ^ if block ~ ~ ~ #kf:bot_walkable rotated ~180 ~ positioned ~ ~1 ~ store success score .success k.Values run function #kf:harvester/move_left
    
# If no success, go either left or right, depending on tag
    execute unless score .success k.Values matches 1 if block ^1 ^ ^ #kf:bot_walkable if block ^-1 ^ ^ #kf:bot_walkable positioned ~ ~1 ~ run function kf:entities/harvester/movement/check_turn

# If no success, set success to 0
execute unless score .success k.Values matches 1 run return 0