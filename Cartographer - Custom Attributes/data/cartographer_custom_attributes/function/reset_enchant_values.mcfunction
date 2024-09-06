#Remove Enchant Values
scoreboard players set @s ca.ench_celerity_lvl 0
scoreboard players set @s ca.ench_dexterity_lvl 0
scoreboard players set @s ca.ench_finesse_lvl 0
scoreboard players set @s ca.ench_immovable_lvl 0
scoreboard players set @s ca.ench_vitality_lvl 0

scoreboard players set @s ca.ench_agility_lvl 0
scoreboard players set @s ca.ench_extended_lvl 0
scoreboard players set @s ca.ench_handling_lvl 0
scoreboard players set @s ca.ench_traveling_lvl 0

scoreboard players set @s ca.ench_blast_protection_lvl 0
scoreboard players set @s ca.ench_fire_protection_lvl 0

scoreboard players set @s ca.ench_aqua_affinity_lvl 0
scoreboard players set @s ca.ench_depth_strider_lvl 0
scoreboard players set @s ca.ench_respiration_lvl 0
scoreboard players set @s ca.ench_swift_sneak_lvl 0
scoreboard players set @s ca.ench_soul_speed_lvl 0


# NEED TO FIND BETTER METHOD

scoreboard players operation $previous ca.stat_var = @s ca.ench_precision_lvl
tag @s remove ca.has_precision_ench
function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_attributes",enchantment:"precision",type:"passive"}
execute unless score @s ca.ench_precision_lvl matches 0 unless score $previous ca.stat_var = @s ca.ench_precision_lvl run tag @s add ca.do_precision_event
execute if score @s ca.ench_precision_lvl matches 0 run function cartographer_custom_attributes:custom_attributes/modifier/remove {attribute:"ranged_damage",id:"precision_ranged_damage"}
tag @s remove ca.update_precision