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

# Remove Tag
tag @s remove .rotate