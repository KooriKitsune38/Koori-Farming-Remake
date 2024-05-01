#> kf:blocks/windmill/_main

# If tag temp, place
execute if entity @s[tag=.temp] align xyz positioned ~.5 ~.5 ~.5 unless entity @e[type=block_display,tag=kf.WaterMill,distance=..1] if block ~ ~ ~ #kf:block_placeable run function kf:blocks/windmill/_place

# Add to nearest bank
scoreboard players add @e[type=item_display,distance=..50,tag=kf.PowerBank,limit=1,sort=nearest] kf.ReceivingPower 50

# Rotate
execute at @s run tp @s ~ ~ ~ ~-10 ~

# If no oak fence, kill
scoreboard players reset .success k.Values
    #> No Block
    execute store success score .success k.Values unless block ~ ~ ~ oak_fence run function kf:blocks/windmill/_remove
    #> If watermill
    execute unless score .success k.Values matches 1 store success score .success k.Values if entity @e[type=block_display,tag=kf.WaterMill,distance=..1] run function kf:blocks/windmill/_remove
    #> If one or more entities
    execute store result score .nearbyEntities k.Values if entity @e[distance=..2,tag=kf.WindMill]
    execute unless score .success k.Values matches 1 if score .nearbyEntities k.Values matches 2.. run function kf:blocks/windmill/_remove