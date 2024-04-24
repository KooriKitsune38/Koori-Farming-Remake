#> kf:entities/harvester/_summon

# If inside block, position up
execute if block ~ ~ ~ #kf:bot_walkable run tp ~ ~1 ~

# Summon the entity
execute at @s align xyz unless entity @e[type=slime,dx=0,tag=kf.Harvester] run summon slime ~.5 ~.5 ~.5 {DeathLootTable:"",PersistenceRequired:1b,NoAI:1b,Silent:1b,Health:2f,Size:0,Tags:[kf.Harvester,kf.RequiresPower,kf.MediumUsage],Passengers:[{id:"block_display",Tags:[kf.Harvester],height:1f,width:1f,Rotation:[0f,0f],block_state:{Name:"minecraft:dispenser"},transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[0.3f,-0.6f,0.3f], right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6f,0.6f,0.6f]}}]}

# Kill marker
kill @s[type=marker]

# Playsound
playsound entity.puffer_fish.blow_up neutral @a ~ ~ ~ 1 2