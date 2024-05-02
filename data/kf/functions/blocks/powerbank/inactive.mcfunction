#> kf:blocks/powerbank/inactive

# Name
execute if block ~ ~1 ~ lever[powered=false] run function kf:blocks/powerbank/set_inactive_state
execute if score @s kf.Power matches 1.. run function kf:blocks/powerbank/set_inactive_state
execute if score @s kf.Power matches ..0 run data modify entity @s CustomName set value '{"text":"No Power","color":"red"}'