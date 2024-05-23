#> kf:entities/harvester/_main

# Player
ride @p[distance=..0.7,nbt=!{FallDistance:0f},predicate=!kf:sneaking] mount @s[tag=!kf.NotRideable]

# Rotate
execute if entity @s[tag=kf.HasBobber] unless entity @e[type=fishing_bobber,distance=...5] run function kf:entities/harvester/_rotate
execute if entity @e[type=fishing_bobber,distance=...5] run tag @s add kf.HasBobber

# Harvesting (If collector nearby)
    #> Return the collector, if tier list
    function kf:entities/harvester/harvesting/_tiers
    #> If success, then harvest
    execute if score .success k.Values matches 1 if entity @s[tag=kf.Powered] run function kf:entities/harvester/harvesting/check_crop
    #execute if score .success k.Values matches 1 if entity @s[tag=kf.Powered] if predicate kf:bot_can_harvest run function kf:entities/harvester/harvesting/check_crop