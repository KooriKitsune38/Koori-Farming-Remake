#> kf:blocks/windmill/_main

# If no oak fence, kill
    #> No Block
    execute if entity @s[tag=kf.Placed] unless block ~ ~ ~ oak_fence run function kf:blocks/windmill/_remove

# If tag temp, place
execute if entity @s[tag=!kf.Placed] align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #kf:block_placeable run function kf:blocks/windmill/_place

# Power
scoreboard players set .powerSupply kf.ReceivingPower 100
function kf:blocks/powerbank/retrieve_power

# Rotate
#execute at @s run tp @s ~ ~ ~ ~-10 ~