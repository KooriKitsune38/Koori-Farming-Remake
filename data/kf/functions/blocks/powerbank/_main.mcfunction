#> kf:blocks/powerbank/_main

# If .temp, place block
execute if entity @s[tag=.temp] align xyz positioned ~.5 ~.9 ~.5 if block ~ ~ ~ #kf:block_placeable run function kf:blocks/powerbank/_place

# Receive Power
execute unless entity @s[tag=kf.Inactive] run scoreboard players operation @s kf.Power += @s kf.ReceivingPower

# State
#> Cap Power
execute if score @s kf.Power matches 3000.. run scoreboard players set @s kf.Power 3000
    #> Powered
    execute unless block ~ ~1 ~ lever[powered=false] if score @s kf.Power matches 1.. run function kf:blocks/powerbank/powered
    #> Unpowered
    execute if block ~ ~1 ~ lever[powered=false] run function kf:blocks/powerbank/inactive
    execute if score @s kf.Power matches ..-0 run function kf:blocks/powerbank/inactive

# Display Power to nearby
execute if entity @p[distance=..1.5] run function kf:blocks/powerbank/display_power

# Reset receiving power
scoreboard players reset @s kf.ReceivingPower

# If no glass, remove
execute unless block ~ ~ ~ glass run function kf:blocks/powerbank/_remove