#> kf:selectors/marker

# If kf.Harvester, .temp summon the harvester
execute if entity @s[tag=kf.Harvester,tag=.temp] align xyz run function kf:entities/harvester/_summon

# If kf.Collector
execute if entity @s[tag=kf.Collector] run function kf:blocks/collector/_main 

# Crystalizer
execute if entity @s[tag=kf.Crystalizer] run function kf:blocks/crystalizer/_main