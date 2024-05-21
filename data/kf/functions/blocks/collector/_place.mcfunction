#> kf:blocks/collector/_place

# Setblock barrel
setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"text":"Harvest Collector"}'}

# Position at center
tp ~ ~ ~

# Tag remove
tag @s add kf.Placed

# Playsound
playsound block.wood.place block @a ~ ~ ~ 