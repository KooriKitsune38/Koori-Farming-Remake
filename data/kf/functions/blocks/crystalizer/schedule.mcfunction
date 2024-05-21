#> kf:blocks/crystalizer/schedule

# Crystalize
execute as @e[type=marker,tag=kf.Crystalizer,tag=kf.Powered] at @s positioned ~ ~1 ~ run function kf:blocks/crystalizer/check_space

# Schedule
schedule function kf:blocks/crystalizer/schedule 600s replace