#> kf:main

# Selectors
    #> Markers
    execute as @e[type=marker] at @s run function kf:selectors/marker
    #> Block Display
    execute as @e[type=block_display] at @s run function kf:selectors/block_display
    #> Slime (Harvester)
    execute as @e[type=slime,tag=kf.Harvester] at @s run function kf:entities/harvester/_main
    #> Item Display
    execute as @e[type=item_display] at @s run function kf:selectors/item_display