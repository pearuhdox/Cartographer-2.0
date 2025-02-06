# get max health and current health
scoreboard players set $max_health ca.heal 0

scoreboard players set @s ca.actual_heal 0

scoreboard players operation @s ca.actual_heal += @s ca.heal
attribute @s minecraft:max_health modifier remove ca.heal_set_hp
execute store result score $max_health ca.heal run attribute @s minecraft:max_health get 10
execute store result score $max_health_test ca.heal run attribute @s minecraft:max_health get 10
execute store result score $current_health ca.heal run data get entity @s Health 10

#Get the percentage mult that has been applied to the player's health
function cartographer_core:helper/heal_player/get_attributes/master

# if your current health is at your max health (or greater somehow), exit the function as there is no need to heal
execute if score $max_health ca.heal <= $current_health ca.heal run return run scoreboard players set @s ca.actual_heal 0

scoreboard players operation $max_health ca.heal -= @s ca.actual_heal
scoreboard players operation $max_health ca.heal -= $current_health ca.heal

# if this heal will fully heal the player, no need to modify attributes. Just fully heal and exit.
execute if score $max_health ca.heal matches ..0 run return run function cartographer_core:helper/heal_player/full_heal

#set up and run the macro
execute store result storage central:heal var1 double -0.1 run scoreboard players get $max_health ca.heal
execute store result storage central:heal var2 double 0.01 run scoreboard players get $health_factor ca.heal
function cartographer_core:helper/heal_player/funny_matrix with storage central:heal

function cartographer_core:helper/heal_player/set_hp with storage central:heal amount

#heal the health then prepare to remove the attribute modifier
effect give @s minecraft:instant_health 1 28 true
scoreboard players set @s ca.custom_healed 1

scoreboard players set @s ca.heal 0