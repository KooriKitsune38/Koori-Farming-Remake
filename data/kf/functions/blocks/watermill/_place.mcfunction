#> kf:blocks/watermill/_place

# Setblock oak fence
setblock ~ ~ ~ oak_fence

# teleport
tp ~ ~ ~

# Tag
tag @s remove .temp
tag @s add .rotate

# Playsound
playsound block.wood.place block @a ~ ~ ~ 

# Check surroundings
scoreboard players reset .success k.Values
    #> If windmill
    execute store success score .success k.Values if entity @e[type=block_display,tag=kf.WindMill,distance=..1.5] run function kf:blocks/watermill/_remove
    #> If one or more entities
    execute store result score .nearbyWatermills k.Values if entity @e[distance=..1.5,tag=kf.WaterMill]
    execute unless score .success k.Values matches 1 if score .nearbyWatermills k.Values matches 2.. run function kf:blocks/watermill/_remove