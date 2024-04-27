#> kf:entities/villagers/_schedule

# Villagers
execute as @e[type=villager,tag=kf.trader] at @s align xyz positioned ~.5 ~ ~.5 run function kf:entities/villagers/_replace

# Schedule
schedule function kf:entities/villagers/_schedule 120s