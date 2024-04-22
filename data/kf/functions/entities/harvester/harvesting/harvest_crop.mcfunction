#> kf:entities/harvester/harvesting/harvest_crop

# Insert into Storage
$loot insert $(x) $(y) $(z) mine ~ ~ ~ mainhand

# Replant
function kf:entities/harvester/harvesting/replant

# Visuals
    #> Particles
    particle block grass ~ ~ ~ .5 .5 .5 1 10
    #> Sounds
    playsound block.crop.break block @a ~ ~ ~