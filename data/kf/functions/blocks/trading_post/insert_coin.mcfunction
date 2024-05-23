#> kf:blocks/trading_post/insert_coin

# Insert
execute at @e[type=marker,tag=kf.Collector,tag=!kf.Full,distance=..15,limit=1,sort=nearest] run loot insert ~ ~ ~ loot kf:coin

# Remove 1
scoreboard players remove .give k.Values 1

# If score, repeat
execute if score .give k.Values matches 1.. run function kf:blocks/trading_post/insert_coin