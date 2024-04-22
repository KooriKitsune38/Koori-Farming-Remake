#> kf:entities/harvester/harvesting/offset_tier

data merge storage kf:position {x:0,y:0,z:0}

# Retrieve Coordinates
    #> No tier
    execute store success score .success k.Values as @e[type=marker,tag=kf.Collector,tag=!kf.Full,distance=..15,sort=nearest] run function kf:entities/harvester/harvesting/get_coords

# Harvest crops
execute if score .success k.Values matches 1 run function kf:entities/harvester/harvesting/harvest_crop with storage kf:position

# Remove Storage
#data remove storage kf:position {}