#> kf:entities/harvester/_summon

# If inside block, position up
execute if block ~ ~ ~ #kf:bot_walkable run tp ~ ~1 ~

# Summon the entity
execute at @s align xyz unless entity @e[type=slime,dx=0,tag=kf.Harvester] run summon slime ~.5 ~.5 ~.5 {DeathLootTable:"",NoAI:1b,Silent:1b,Health:2f,Size:0,Tags:[kf.Harvester],Passengers:[{id:"block_display",Tags:[kf.Harvester],height:1f,width:1f,Rotation:[0f,0f],block_state:{Name:"minecraft:conduit"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-.75f,-1f,-.75f], right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f]}}]}

# Kill marker
kill @s[type=marker]