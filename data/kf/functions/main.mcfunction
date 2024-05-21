#> kf:main

# Humidity
function kf:humidity/humidity

# Selectors
    #> Harvester Placer
    execute as @e[type=marker,tag=kf.Harvester] at @s align xyz run function kf:entities/harvester/_summon
    #> Collector
    execute as @e[type=marker,tag=kf.Collector] at @s run function kf:blocks/collector/_main 
    #> Crystalizer
    execute as @e[type=marker,tag=kf.Crystalizer] at @s run function kf:blocks/crystalizer/_main
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
    #> Powered Entities
    scoreboard players reset .powerExpense kf.PowerUsage
    execute as @e[tag=kf.RequiresPower] at @s run function kf:power_entities
    #> kf.PowerBank
    scoreboard players set @e[predicate=kf:powerbank_entity] kf.UsingBank 0
    execute as @e[type=item_display,tag=kf.PowerBank] at @s run function kf:blocks/powerbank/_main
    #> Villagers
    execute as @e[type=villager,tag=kf.trader] at @s run function kf:entities/villagers/_main