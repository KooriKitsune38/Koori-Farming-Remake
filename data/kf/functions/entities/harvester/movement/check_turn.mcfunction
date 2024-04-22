#> kf:entities/harvester/movement/check_turn

# If no tag, go right
tag @s[tag=!kf.GoLeft,tag=!kf.GoRight] add kf.GoRight

# Check where to go
    #> Go Right
    execute if block ^1 ^1 ^ #kf:bot_passable if entity @s[tag=kf.GoRight] positioned ^1 ^ ^ rotated ~180 ~ store success score .success k.Values run function #kf:harvester/move_right
    #> Go Left
    execute if block ^-1 ^1 ^ #kf:bot_passable unless score .success k.Values matches 1 if entity @s[tag=kf.GoLeft] positioned ^-1 ^ ^ rotated ~180 ~ store success score .success k.Values run function #kf:harvester/move_left