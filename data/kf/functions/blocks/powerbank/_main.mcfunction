#> kf:blocks/powerbank/_main

# If .temp, place block
execute if entity @s[tag=!kf.Placed] align xyz positioned ~.5 ~.9 ~.5 if block ~ ~ ~ #kf:block_placeable run function kf:blocks/powerbank/_place

tag @s remove kf.Inactive

# Receive Power
scoreboard players operation @s kf.Power += @s kf.ReceivingPower

# State
#> Cap Power
scoreboard players set @s[scores={kf.Power=3000..}] kf.Power 3000
    #> Powered
    execute if score @s kf.Power matches 1.. run function kf:blocks/powerbank/powered
    #> Unpowered
    execute unless entity @e[tag=kf.Powered,distance=..30] run function kf:blocks/powerbank/inactive
    execute if predicate kf:inactive_powerbank run function kf:blocks/powerbank/inactive

# Display Power to nearby
execute if entity @p[distance=..1.5] run function kf:blocks/powerbank/display_power

# Reset scores
scoreboard players reset @s kf.PowerUsage
scoreboard players reset @s kf.ReceivingPower

# If no glass, remove
execute unless block ~ ~ ~ glass run function kf:blocks/powerbank/_remove