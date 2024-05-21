#> kf:blocks/sprinkler/_main

# Kill Conditions
    #> Unless there's a cauldron
    execute if entity @s[tag=kf.Placed,predicate=!kf:sprinkler_removal] run function kf:blocks/sprinkler/inactive/_remove

# If not placed
execute if entity @s[tag=!kf.Placed] run function kf:blocks/sprinkler/_place

# If water on top
execute if block ~ ~1 ~ water_cauldron if entity @s[tag=kf.Powered] run function kf:blocks/sprinkler/active/water_blocks
tag @s[predicate=kf:sprinkler_power_off] remove kf.Active