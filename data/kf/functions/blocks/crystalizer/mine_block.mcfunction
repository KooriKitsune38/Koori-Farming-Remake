#> kf:blocks/crystalizer/mine_block

# Insert into Storage
$execute if block ~ ~ ~ budding_amethyst run loot insert $(x) $(y) $(z) loot kf:budding_amethyst
$execute if score .coalBlocks kf.Crystalization matches 8 run loot insert $(x) $(y) $(z) mine ~ ~ ~ netherite_pickaxe
$execute if score .ironBlocks kf.Crystalization matches 8 run loot insert $(x) $(y) $(z) mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:1s}]}
$execute if score .goldBlocks kf.Crystalization matches 8 run loot insert $(x) $(y) $(z) mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:2s}]}
$execute if score .diamondBlocks kf.Crystalization matches 8 run loot insert $(x) $(y) $(z) mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:3s}]}


# Setblock
setblock ~ ~ ~ air

# Visuals
    #> Particles
    particle block cobblestone ~ ~ ~ .5 .5 .5 1 10
    #> Sounds
    playsound block.stone.break block @a ~ ~ ~