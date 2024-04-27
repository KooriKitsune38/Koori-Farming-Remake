#> kf:blocks/crystalizer/check_space

# Remove Ores
fill ~-1 ~ ~-1 ~1 ~ ~1 air replace #kf:ores
fill ~-1 ~1 ~ ~1 ~1 ~ air replace #kf:ores
fill ~ ~1 ~1 ~ ~1 ~-1 air replace #kf:ores

# Fill gaps
    fill ~1 ~1 ~1 ~1 ~1 ~1 structure_void replace air
    fill ~-1 ~1 ~1 ~-1 ~1 ~1 structure_void replace air
    fill ~1 ~1 ~-1 ~1 ~1 ~-1 structure_void replace air
    fill ~-1 ~1 ~-1 ~-1 ~1 ~-1 structure_void replace air

# Retrieve blocks
    execute store result score .availableBlocks kf.Crystalization run fill ~1 ~ ~1 ~-1 ~1 ~-1 void_air replace air
    fill ~1 ~ ~1 ~-1 ~1 ~-1 air replace void_air
    fill ~1 ~ ~1 ~-1 ~1 ~-1 air replace structure_void

# If available, store success
scoreboard players reset .success k.Values
execute if score .availableBlocks kf.Crystalization matches 14 run function kf:blocks/crystalizer/crystalize
execute unless score .success k.Values matches 1 run particle angry_villager ~ ~ ~ 1 .5 1 1 10