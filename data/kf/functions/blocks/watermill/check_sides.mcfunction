#> kf:blocks/watermill/check_sides

execute unless block ~ ~ ~ water[level=0] if block ^1 ^ ^ water run scoreboard players set .success k.Values 1
execute unless block ~ ~ ~ water[level=0] if block ^-1 ^ ^ water run scoreboard players set .success k.Values 1

execute if block ~ ~ ~ water[level=0] if block ^1 ^ ^ water unless block ^1 ^ ^ water[level=0] run scoreboard players set .success k.Values 1
execute if block ~ ~ ~ water[level=0] if block ^-1 ^ ^ water unless block ^-1 ^ ^ water[level=0] run scoreboard players set .success k.Values 1

# Active
execute if score .success k.Values matches 1 run function kf:blocks/watermill/active