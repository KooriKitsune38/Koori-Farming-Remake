#> kf:blocks/trading_post/_trade

# Insert
function kf:blocks/trading_post/insert_coin

# Remove count
execute store result score .count k.Values run data get entity @s Items[0].Count
execute store result entity @s Items[0].Count int 1 run scoreboard players operation .count k.Values -= .clear k.Values

# Remove 0
execute unless score .count k.Values matches 1.. run data remove entity @s Items[0]
execute if score .count k.Values matches 1.. run function kf:blocks/trading_post/swap_slot