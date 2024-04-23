#> kf:selectors/block_display

# Sprinkler
execute if entity @s[tag=kf.Sprinkler] run function kf:blocks/sprinkler/_main

# Harvester
execute if entity @s[tag=kf.Harvester] unless entity @e[type=slime,tag=kf.Harvester,distance=...8] run kill @s

# Water Mill
execute if entity @s[tag=kf.WaterMill] run function kf:blocks/watermill/_main

# Windmill
execute if entity @s[tag=kf.WindMill] run function kf:blocks/windmill/_main