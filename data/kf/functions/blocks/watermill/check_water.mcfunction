#> kf:blocks/watermill/check_water

# Check water level
    #> 0
    execute if block ~ ~ ~ water[level=0] run return 8
    #> 1
    execute if block ~ ~ ~ water[level=1] run return 7
    #> 2
    execute if block ~ ~ ~ water[level=2] run return 6
    #> 3
    execute if block ~ ~ ~ water[level=3] run return 5
    #> 4
    execute if block ~ ~ ~ water[level=4] run return 4
    #> 5
    execute if block ~ ~ ~ water[level=5] run return 3
    #> 6
    execute if block ~ ~ ~ water[level=6] run return 2
    #> 7
    execute if block ~ ~ ~ water[level=7] run return 1
    #> 8
    execute if block ~ ~ ~ water[level=8] run return 0

# return -1
return -1