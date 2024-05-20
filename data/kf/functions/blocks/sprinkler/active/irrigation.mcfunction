#> kf:blocks/sprinkler/active/irrigation

# Fill
execute at @e[type=block_display,tag=kf.Sprinkler,tag=kf.Active] run function kf:blocks/sprinkler/active/fill_farmland

# Schedule
schedule function kf:blocks/sprinkler/active/irrigation 2s replace