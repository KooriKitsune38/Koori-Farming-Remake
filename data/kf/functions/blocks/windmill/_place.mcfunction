#> kf:blocks/windmill/_place

# Setblock oak fence
setblock ~ ~ ~ oak_fence

# teleport
tp ~ ~ ~

# Tag
tag @s add kf.Placed

# Playsound
playsound block.stem.place block @a ~ ~ ~ 

# Check nearby
scoreboard players reset .success k.Values
    #> If watermill
    execute store success score .success k.Values if entity @e[type=block_display,tag=kf.WaterMill,distance=..1.5] run function kf:blocks/windmill/_remove
    #> If one or more entities
    execute store result score .nearbyEntities k.Values if entity @e[distance=..2,tag=kf.WindMill]
    execute unless score .success k.Values matches 1 if score .nearbyEntities k.Values matches 2.. run function kf:blocks/windmill/_remove