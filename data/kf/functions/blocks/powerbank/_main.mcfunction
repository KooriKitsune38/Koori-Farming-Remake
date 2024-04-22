#> kf:blocks/powerbank/_main

# If .temp, place block
execute if entity @s[tag=.temp] align xyz positioned ~.5 ~.9 ~.5 if block ~ ~ ~ #kf:collector_placeable run function kf:blocks/powerbank/_place

# If no glass, remove
execute unless block ~ ~ ~ glass run kill @s

# State
    #> Powered
    execute if score @s kf.Power matches 1.. run function kf:blocks/powerbank/powered
    #> Unpowered
    execute if score @s kf.Power matches ..-0 run function kf:blocks/powerbank/inactive