#> kf:main

# Humidity
function kf:humidity/humidity

# Selectors
    #> Markers
    execute as @e[type=marker] at @s run function kf:selectors/marker
    #> Sprinkler
    execute as @e[type=block_display,tag=kf.Sprinkler] at @s run function kf:blocks/sprinkler/_main
    #> Harvester Display
    execute as @e[type=block_display,tag=kf.Harvester] at @s unless entity @e[type=slime,tag=kf.Harvester,distance=...8] run function kf:entities/harvester/_remove
    #> Water Mill
    execute as @e[type=block_display,tag=kf.WaterMill] at @s run function kf:blocks/watermill/_main
    #> Windmill
    execute as @e[type=block_display,tag=kf.WindMill] at @s run function kf:blocks/windmill/_main
    #> Slime (Harvester)
    execute as @e[type=slime,tag=kf.Harvester] at @s run function kf:entities/harvester/_main
    #> RequiresPower Entities
    execute as @e[tag=kf.RequiresPower] at @s run function kf:selectors/power_entities
    #> kf.PowerBank
    execute as @e[type=item_display,tag=kf.PowerBank] at @s run function kf:blocks/powerbank/_main
    #> Villagers
    execute as @e[type=villager,tag=kf.trader] at @s run function kf:entities/villagers/_main