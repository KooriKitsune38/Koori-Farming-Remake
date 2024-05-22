#> kf:blocks/sprinkler/_place

# If one or more entities
    execute store result score .nearbySprinklers kf.WateringTimer if entity @e[distance=...5,tag=kf.Sprinkler]
    execute if score .nearbySprinklers kf.WateringTimer matches 2.. run function kf:blocks/sprinkler/inactive/_remove

# Sound
playsound item.crop.plant block @a ~ ~ ~

# Tag
tag @s add kf.Placed 