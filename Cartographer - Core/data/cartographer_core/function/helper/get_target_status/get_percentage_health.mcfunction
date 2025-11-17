
#Get player's max health
execute store result score $target_max_health ca.var run attribute @s minecraft:max_health get
#Get player's current health
function cartographer_core:helper/get_target_status/get_health
#Multiply current health by 100
scoreboard players operation $target_health ca.var *= $100 ca.CONSTANT
#Divide current health by max health
scoreboard players operation $target_health ca.var /= $target_max_health ca.var
#Set intermediary score
scoreboard players operation $percentage_health_remaining ca.var = $target_health ca.var
