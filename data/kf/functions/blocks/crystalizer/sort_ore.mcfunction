#> kf:blocks/crystalizer/sort_ore

# Spawn ore
    #> Normal blocks
    execute unless score .success k.Values matches 1 run loot spawn ~ ~ ~ loot kf:normal_ore
    #> Higher blocks
    execute unless score .diamondBlocks kf.Crystalization matches 8 if score .success k.Values matches 1 run loot spawn ~ ~ ~ loot kf:uncommon_ores
    execute if score .diamondBlocks kf.Crystalization matches 8 run loot spawn ~ ~ ~ loot kf:rare_ores

# Take item
execute as @e[type=item,nbt={Age:0s,Item:{tag:{.temp:1b}}},limit=1,sort=nearest] run function kf:blocks/crystalizer/get_block

# Place block
function kf:blocks/crystalizer/place_ore with storage kf:values