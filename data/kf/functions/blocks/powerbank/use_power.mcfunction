#> kf:blocks/powerbank/use_power

# Remove Power
scoreboard players operation @s kf.PowerUsage += .powerExpense kf.PowerUsage

# Set success
scoreboard players set .success k.Values 1