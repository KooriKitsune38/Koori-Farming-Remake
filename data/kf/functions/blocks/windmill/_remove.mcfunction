#> kf:blocks/windmill/_remove

# Drop Item

# Kill
kill @s

# Remove fence
fill ~ ~ ~ ~ ~ ~ air replace oak_fence

# Particle
particle block oak_fence ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
playsound block.stem.break block @a ~ ~ ~ 1 2