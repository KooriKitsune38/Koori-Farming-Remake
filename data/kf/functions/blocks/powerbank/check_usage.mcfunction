#> kf:blocks/powerbank/check_usage

# Check Usage
    #> Low
    execute if entity @s[tag=kf.LowUsage] run scoreboard players add @e[distance=..0.00001,sort=nearest,limit=1,tag=kf.PowerBank] kf.PowerUsage 15
    #> Medium
    execute if entity @s[tag=kf.MediumUsage] run scoreboard players add @e[distance=..0.00001,sort=nearest,limit=1,tag=kf.PowerBank] kf.PowerUsage 50
    #> High
    execute if entity @s[tag=kf.HighUsage] run scoreboard players add @e[distance=..0.00001,sort=nearest,limit=1,tag=kf.PowerBank] kf.PowerUsage 100