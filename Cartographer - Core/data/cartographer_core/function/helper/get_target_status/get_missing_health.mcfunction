
#Get player's max health
execute store result score $target_missing_health ca.var run attribute @s minecraft:max_health get
#Get player's current health
function cartographer_core:helper/get_target_status/get_health
#Minus the player's health from their max health
scoreboard players operation $target_missing_health ca.var -= $target_health ca.var
