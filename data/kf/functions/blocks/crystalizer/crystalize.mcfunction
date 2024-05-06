#> kf:blocks/crystalizer/crystalize


# Particles and Sound
    #> Particle
    particle explosion ~ ~ ~ 1 .5 1 1 10 normal
    #> Sound
    playsound minecraft:entity.armor_stand.break block @a ~ ~ ~ 2 0.8

# Check surroundings for iron
scoreboard players reset .success k.Values
execute store result score .coalBlocks kf.Crystalization run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 void_air replace coal_block
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 coal_block replace void_air
execute store result score .ironBlocks kf.Crystalization run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 void_air replace iron_block
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 iron_block replace void_air
execute store result score .goldBlocks kf.Crystalization run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 void_air replace gold_block
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 gold_block replace void_air
execute store result score .diamondBlocks kf.Crystalization run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 void_air replace diamond_block
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 diamond_block replace void_air
execute if score .coalBlocks kf.Crystalization matches 8 run scoreboard players set .success k.Values 1
execute if score .ironBlocks kf.Crystalization matches 8 run scoreboard players set .success k.Values 1
execute if score .goldBlocks kf.Crystalization matches 8 run scoreboard players set .success k.Values 1
execute if score .diamondBlocks kf.Crystalization matches 8 run scoreboard players set .success k.Values 1

# Generate
place template kf:geode ~-1 ~ ~-1

# Set ores
function kf:blocks/crystalizer/place_ores
execute if score .success k.Values matches 1 run function kf:blocks/crystalizer/offset_tier

scoreboard players set .success k.Values 1