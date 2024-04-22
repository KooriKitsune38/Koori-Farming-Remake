#> kf:blocks/powerbank/idle

# Remove Power
execute store result score .tempUUID kf.PowerUUIDs run data get entity @s UUID[0]
scoreboard players reset .poweredEntities kf.Power
execute as @e[tag=kf.Powered,distance=..50] if score @s kf.PowerUUIDs = .tempUUID kf.PowerUUIDs run scoreboard players add .poweredEntities kf.Power 1
scoreboard players operation .poweredEntities kf.Power *= .powerMultiplier kf.Power
scoreboard players operation @s kf.Power -= .poweredEntities kf.Power
