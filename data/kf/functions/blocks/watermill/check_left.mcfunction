#> kf:blocks/watermill/check_left

# Store .waterLevel
    #> Underneath
    execute store result score .waterLevel k.Values run function kf:blocks/watermill/check_water
    #> Left Side
    execute positioned ^-1 ^ ^ store result score .waterLevel1 k.Values run function kf:blocks/watermill/check_water

# Check if lower
execute unless score .waterLevel1 k.Values matches -1 store success score .movingRight k.Values if score .waterLevel k.Values < .waterLevel1 k.Values run function kf:blocks/watermill/adjust_flow
execute unless score .waterLevel1 k.Values matches -1 store success score .movingLeft k.Values if score .waterLevel k.Values > .waterLevel1 k.Values run function kf:blocks/watermill/adjust_flow
