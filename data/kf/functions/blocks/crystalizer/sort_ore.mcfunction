#> kf:blocks/crystalizer/sort_ore

# Spawn ore
loot spawn ~ ~ ~ loot kf:ore

# Take item
execute as @e[type=item,nbt={Age:0s,Item:{tag:{.temp:1b}}},limit=1,sort=nearest] run function kf:blocks/crystalizer/get_block

# Place block
function kf:blocks/crystalizer/place_ore with storage kf:values