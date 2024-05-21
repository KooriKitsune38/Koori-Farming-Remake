#> kf:blocks/powerbank/check_usage

scoreboard players reset .powerExpense kf.PowerUsage

# Check Usage
    #> Low
    execute if entity @s[tag=kf.LowUsage] run scoreboard players add .powerExpense kf.PowerUsage 15
    #> Medium
    execute if entity @s[tag=kf.MediumUsage] run scoreboard players add .powerExpense kf.PowerUsage 50
    #> High
    execute if entity @s[tag=kf.HighUsage] run scoreboard players add .powerExpense kf.PowerUsage 100