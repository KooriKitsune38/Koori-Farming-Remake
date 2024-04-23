#> kf:blocks/watermill/adjust

# Position at center and check rotation
    #> West
    execute if block ~ ~ ~ oak_fence[west=true] run tp @s ~ ~ ~ 180 ~
    #> East
    execute if block ~ ~ ~ oak_fence[east=true] run tp @s ~ ~ ~ 0 ~
    #> North
    execute if block ~ ~ ~ oak_fence[north=true] run tp @s ~ ~ ~ 90 ~
    #> South
    execute if block ~ ~ ~ oak_fence[south=true] run tp @s ~ ~ ~ -90 ~

# If water underneath, check rotation (CREDITS TO SOFIA5)
execute positioned ~ ~-1 ~ if block ~ ~ ~ water rotated ~90 ~ run function kf:blocks/watermill/check_right

# Remove Tag
tag @s remove .rotate
