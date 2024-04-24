#> kf:entities/harvester/harvesting/_tiers

# Check Tier
    #> No Tier
    execute store success score .success k.Values if entity @e[type=marker,tag=kf.Collector,tag=!kf.Full,distance=..15]
