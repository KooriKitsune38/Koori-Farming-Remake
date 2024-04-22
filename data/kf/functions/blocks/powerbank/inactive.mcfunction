#> kf:blocks/powerbank/inactive

# Name
data modify entity @s CustomName set value '{"text":"No Power","color":"red"}'

# Give power
execute store result score .tempUUID kf.PowerUUIDs run data get entity @s UUID[0]
    #> No Tier
    execute as @e[tag=kf.Powered,distance=..50] if score @s kf.PowerUUIDs = .tempUUID kf.PowerUUIDs run function kf:blocks/powerbank/unpower_entities