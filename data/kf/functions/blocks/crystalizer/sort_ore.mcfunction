#> kf:blocks/crystalizer/sort_ore

# Roll number
execute store result score .chance k.Values run random value 1..100

# Ores
    #> Coal
    execute if score .chance k.Values matches ..40 run setblock ~ ~ ~ coal_ore
    #> Copper
    execute if score .chance k.Values matches ..25 run setblock ~ ~ ~ copper_ore
    #> Iron
    execute if score .chance k.Values matches ..25 run setblock ~ ~ ~ iron_ore
    #> Gold
    execute if score .chance k.Values matches ..20 run setblock ~ ~ ~ gold_ore
    #> Redstone
    execute if score .chance k.Values matches ..10 run setblock ~ ~ ~ redstone_ore
    #> Diamond
    execute if score .chance k.Values matches ..2 run setblock ~ ~ ~ diamond_ore
    #> Emerald
    execute if score .chance k.Values matches ..1 run setblock ~ ~ ~ emerald_ore