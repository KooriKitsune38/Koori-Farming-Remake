#> kf:blocks/sprinkler/active/check_sprinklers_schedule

# Sprinkler
execute as @e[type=block_display,tag=kf.Sprinkler,tag=kf.Active] at @s run function kf:blocks/sprinkler/active/check_sprinklers

# Schedule
schedule function kf:blocks/sprinkler/active/check_sprinklers_schedule 10s replace