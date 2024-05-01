#> kf:blocks/powerbank/debug/raycast

# Display particle
execute if score .rayType kf.ReceivingPower matches 1 run particle dust 0.565 1 0.906 1 ~ ~ ~ 0 0 0 0 1 normal @a[tag=.temp]
execute if score .rayType kf.ReceivingPower matches 2 run particle dust 1 0.529 1 1 ~ ~ ~ 0 0 0 0 1 normal @a[tag=.temp]

# Unless entity, repeat
execute if score .success k.Values matches 1 unless entity @s[distance=..1] positioned ^ ^ ^1 run function kf:blocks/powerbank/debug/raycast