#> kf:blocks/powerbank/_remove

# Drop Item

# Kill
kill @s

# Remove fence
fill ~ ~ ~ ~ ~ ~ air replace glass

# Particle
particle block glass ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
playsound block.beacon.deactivate block @a ~ ~ ~ 1 2