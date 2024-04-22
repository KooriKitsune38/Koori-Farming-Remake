#> kf:entities/harvester/movement/check_surroundings

# Reset success
scoreboard players reset .success k.Values

# Check blocks
    #> Check if it's not blocked
    execute store success score .blocked kf.HarvesterMovement unless block ^ ^ ^1 #kf:bot_passable
    #> Check Front
    execute unless score .blocked kf.HarvesterMovement matches 1 positioned ~ ~-1 ~ positioned ^ ^ ^1 if block ~ ~ ~ #kf:bot_walkable positioned ~ ~1 ~ store success score .success k.Values run function kf:entities/harvester/movement/move
    execute if score .success k.Values matches 1 run return 1
    #> Check Sides
    execute positioned ~ ~-1 ~ run function kf:entities/harvester/movement/check_sides
    #> Check Turning Back
    execute unless score .success k.Values matches 1 positioned ~ ~-1 ~ if block ^ ^ ^-1 #kf:bot_walkable positioned ~ ~1 ~ rotated ~180 ~ run function kf:entities/harvester/movement/move