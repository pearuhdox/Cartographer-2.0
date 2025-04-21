data modify storage cartographer:custom_statuses apply set value []

$data modify storage cartographer:custom_statuses apply set from storage $(location) $(path).$(action).$(type)

execute if entity @s[type=player] run data modify storage cartographer:custom_statuses conditional_data set from storage cartographer:player_data main.working_data.cartographer.status_condition_data
execute unless entity @s[type=player] run data modify storage cartographer:custom_statuses conditional_data set from storage amd:mob_data working_data.data.conditional_data


$function cartographer_custom_statuses:apply_status/apply/rec {action:"$(action)",type:"$(type)"}

execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.status_condition_data set from storage cartographer:custom_statuses conditional_data
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.conditional_data set from storage cartographer:custom_statuses conditional_data

#Write to player data
execute if entity @s[type=player] run function cartographer_core:pldata/write
execute unless entity @s[type=player] run function cartographer_core:amd/write


#Give the projectile the tag it needs to be checked
execute if entity @s[type=#bb:projectile,tag=!ca.projectile_checker] run tag @s add ca.needs_checker
execute if entity @s[type=#bb:projectile,tag=!ca.projectile_checker] run tag @s add ca.has_status_data

execute if entity @s[type=fishing_bobber,tag=!ca.projectile_checker] run tag @s add ca.needs_checker
execute if entity @s[type=fishing_bobber,tag=!ca.projectile_checker] run tag @s add ca.has_status_data

$execute if entity @s[type=#cartographer_core:potions] run tag @s add ca.apply_status_potion_throw_$(type)