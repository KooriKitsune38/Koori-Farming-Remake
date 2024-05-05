#> kf:blocks/crystalizer/get_block

# Store data into storage
data modify storage kf:values tempBlock set from entity @s Item.id

# Kill
kill @s