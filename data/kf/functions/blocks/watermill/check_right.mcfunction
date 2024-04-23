#> kf:blocks/watermill/check_right

# Store .waterLevel
    #> Underneath
    execute store result score .waterLevel k.Values run function kf:blocks/watermill/check_water
    #> Right Side
    execute positioned ^1 ^ ^ store result score .waterLevel1 k.Values run function kf:blocks/watermill/check_water

# Check if lower
scoreboard players reset .movingRight k.Values
scoreboard players reset .movingLeft k.Values
execute store success score .movingRight k.Values unless score .waterLevel1 k.Values matches -1 if score .waterLevel k.Values > .waterLevel1 k.Values run function kf:blocks/watermill/adjust_flow
execute store success score .movingLeft k.Values unless score .waterLevel1 k.Values matches -1 if score .waterLevel k.Values < .waterLevel1 k.Values run function kf:blocks/watermill/adjust_flow

# If no success, check left
execute unless score .movingRight k.Values matches 1 unless score .movingLeft k.Values matches 1 run function kf:blocks/watermill/check_left