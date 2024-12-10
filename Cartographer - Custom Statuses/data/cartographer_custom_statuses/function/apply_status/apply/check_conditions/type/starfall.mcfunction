scoreboard players set $condition_failed ca.apply_status_conditions 0

function cartographer_custom_statuses:apply_status/apply/check_conditions/copy_data

#Ranged only checks owner conditions here - target conditions are handled on actual hit
$execute as $(owner) at @s run function cartographer_custom_statuses:apply_status/apply/check_conditions/owner_conditions
#function cartographer_custom_statuses:apply_status/apply/check_conditions/target_conditions

$execute unless score $condition_failed ca.apply_status_conditions matches 1.. run data modify storage cartographer:custom_enchantments status_enchant_hit.enchantment_hit.$(type) append from storage cartographer:custom_statuses apply[0]


$tag @s add ca.apply_status_ranged_hit_$(type)