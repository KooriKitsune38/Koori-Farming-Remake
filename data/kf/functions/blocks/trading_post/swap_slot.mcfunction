#> kf:blocks/trading_post/swap_slot

# Shuffle
data modify storage kf:trading tempStorage set from entity @s Items
scoreboard players set .currentSlot k.Values -1
data remove entity @s Items
function kf:blocks/trading_post/arrange_storage