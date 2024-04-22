#> kf:entities/harvester/harvesting/check_crop

# Check max age
    #> 7 Age crops
    execute if block ~ ~ ~ #kf:7_age[age=7] run function kf:entities/harvester/harvesting/offset_tier
    #> 3 Age crops
    execute if block ~ ~ ~ #kf:3_age[age=3] run function kf:entities/harvester/harvesting/offset_tier
    #> Pumpkin and Melons
    execute positioned ^ ^ ^1 if block ~ ~ ~ #kf:block_crop run function kf:entities/harvester/harvesting/offset_tier