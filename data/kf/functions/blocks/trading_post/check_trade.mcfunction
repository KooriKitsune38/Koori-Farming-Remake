#> kf:blocks/trading_post/check_trade

## THANK YOU 1000celebration (AKA meg, AKA 123itsaMe)

# Check if id exists
$execute store success score .success k.Values unless data storage kf:trading prices."$(id)"
execute if score .success k.Values matches 1 run function kf:blocks/trading_post/swap_slot
execute if score .success k.Values matches 1 run return 0

# Get Count
$scoreboard players set .give k.Values $(Count)

# Check Value
    ## Retrieve
    $execute store result score .val k.Values run data get storage kf:trading prices."$(id)"
    ## If it's more than the current value, move
    execute store success score .success k.Values if score .val k.Values > .give k.Values
    execute if score .success k.Values matches 1 run function kf:blocks/trading_post/swap_slot
    execute if score .success k.Values matches 1 run return 0

# Check how many coins to place
execute store result score .clear k.Values run scoreboard players operation .give k.Values /= .val k.Values
scoreboard players operation .clear k.Values *= .val k.Values

# Transaction
function kf:blocks/trading_post/_trade