#> kf:blocks/powerbank/powered

# Particle
particle wax_off ~ ~-0.3 ~ .5 .5 .5 1 1 normal

# Remove Power
scoreboard players operation @s kf.Power -= @s kf.PowerUsage

# Name
data modify entity @s CustomName set value '{"text":"Active","color":"green"}'