#> kf:blocks/watermill/adjust_flow

# Retrieve Y Rotation
execute store result score .yRot k.Values run data get entity @s Rotation[1]

# Check which side
    #> Right
    execute positioned as @s if score .movingRight k.Values matches 1 facing ^1 ^ ^ run tp @s ~ ~ ~ ~ ~
    #> Left
    execute positioned as @s if score .movingLeft k.Values matches 1 facing ^-1 ^ ^ run tp @s ~ ~ ~ ~ ~

# Replace Y Rotation
execute store result entity @s Rotation[1] float 1 run scoreboard players get .yRot k.Values