#> kf:blocks/sprinkler/active/bonemeal_schedule

# Sprinkler
execute as @e[type=block_display,tag=kf.Sprinkler,tag=!kf.noBonemeal,tag=kf.Active] at @s if predicate kf:bonemeal run function kf:blocks/sprinkler/active/bonemeal

# Schedule
schedule function kf:blocks/sprinkler/active/bonemeal_schedule 10s replace