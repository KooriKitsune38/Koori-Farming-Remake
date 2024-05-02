#> kf:blocks/powerbank/display_power

# If power 0 set to 0
scoreboard players operation .tempPower kf.Power = @s kf.Power
execute if score @s kf.Power matches ..0 run scoreboard players set .tempPower kf.Power 0

# Actionbar
title @a[distance=..1.5] actionbar [{"text": "Power: ","color":"gold"},{"score":{"name":".tempPower","objective": "kf.Power"},"color": "aqua"},{"text":" - ","color":"gray"},{"text": "Usage: ","color":"red"},{"score":{"name":"@s","objective": "kf.PowerUsage"},"color": "aqua"},{"text":" - ","color":"gray"},{"text": "Receiving: ","color":"green"},{"score":{"name":"@s","objective": "kf.ReceivingPower"},"color": "aqua"}]