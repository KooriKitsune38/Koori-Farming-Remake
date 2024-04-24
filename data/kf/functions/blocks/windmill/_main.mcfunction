#> kf:blocks/windmill/_main

# If tag temp, place
execute if entity @s[tag=.temp] align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #kf:block_placeable run function kf:blocks/windmill/_place

# Add to nearest bank
scoreboard players add @e[type=item_display,distance=..50,tag=kf.PowerBank,limit=1,sort=nearest] kf.ReceivingPower 50

# Rotate
execute at @s run tp @s ~ ~ ~ ~-10 ~

# If no oak fence, kill
    #> No Block
    execute unless block ~ ~ ~ oak_fence run function kf:blocks/windmill/_remove
    #> If one or more entities
    execute store result score .nearbyEntities k.Values if entity @e[distance=..2,tag=kf.WindMill]
    execute if score .nearbyEntities k.Values matches 2.. run function kf:blocks/windmill/_remove