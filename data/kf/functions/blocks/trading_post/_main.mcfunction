#> kf:blocks/trading_post/_main

# Kill Conditions
    #> Unless there's a powered rail
    execute if entity @s[tag=kf.Placed] unless block ~ ~ ~ detector_rail run function kf:blocks/trading_post/_remove

# If not placed
execute if entity @s[tag=!kf.Placed] align xyz positioned ~.5 ~.51 ~.5 run function kf:blocks/trading_post/_place

# If chest minecart
execute if entity @s[tag=kf.Powered] as @e[type=#kf:trading_cart,distance=..0.5,limit=1,sort=nearest] if data entity @s Items[0] if entity @e[type=marker,tag=kf.Collector,tag=!kf.Full,distance=..15] run function kf:blocks/trading_post/check_trade with entity @s Items[0]