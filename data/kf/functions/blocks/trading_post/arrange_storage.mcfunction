#> kf:blocks/trading_post/arrange_storage

# Place slot to item
execute store result storage kf:trading tempStorage[0].Slot byte 1 run scoreboard players get .currentSlot k.Values
execute if score .currentSlot k.Values matches -1 run data modify storage kf:trading tempStorage append from storage kf:trading tempStorage[0]

# Append to Items
data modify entity @s Items append from storage kf:trading tempStorage[0]

# Add 1
scoreboard players add .currentSlot k.Values 1

# Remove Storage
data remove storage kf:trading tempStorage[0]

# If storage 1, continue
execute if data storage kf:trading tempStorage[0] run function kf:blocks/trading_post/arrange_storage