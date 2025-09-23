
data modify storage cartographer_core:player_equip data.main set value {}
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/passive_armor unless items entity @s weapon.mainhand *[minecraft:custom_data~{disable_mainhand:1b}] run data modify storage cartographer_core:player_equip data.main set from entity @s SelectedItem
execute unless items entity @s weapon.offhand #cartographer_core:enchant_support/passive_armor unless items entity @s weapon.mainhand #cartographer_core:ranged_weapons unless items entity @s weapon.offhand *[minecraft:custom_data~{disable_offhand:1b}] run data modify storage cartographer_core:player_equip data.offh set from entity @s equipment.offhand

#Offhand Behavior
execute unless data entity @s equipment.offhand.components.minecraft:custom_data.allow_offhand unless items entity @s weapon.offhand #cartographer_core:offhand_allowed run data remove storage cartographer_core:player_equip data.offh
execute unless data entity @s equipment.offhand.components.minecraft:custom_data.allow_offhand if items entity @s weapon.offhand *[minecraft:weapon] run data remove storage cartographer_core:player_equip data.offh

execute if data entity @s equipment.offhand.components.minecraft:custom_data.disable_mainhand run data remove storage cartographer_core:player_equip data.main
execute if data entity @s equipment.offhand.components.minecraft:custom_data.disable_offhand run data remove storage cartographer_core:player_equip data.offh


tag @s remove ca.enchant_tick

execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_enchantments:calculate_hand
execute if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:calculate_hand
execute if score $custom_statuses ca.installed matches 1.. run function cartographer_custom_statuses:calculate_hand
execute if score $enchantment_rework ca.installed matches 1.. run function cartographer_enchantment_rework:calculate_hand

execute if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:calculate_hand_attr
execute if score $rat ca.installed matches 1.. run function cartographer_rat:calculate_hand_attr

execute if score $custom_statuses ca.installed matches 1.. run function cartographer_custom_statuses:calculator/process/coating_check

#Enable Enchant Ticking if necessary
execute if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:allow_tick
execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_enchantments:allow_tick
execute if score $custom_statuses ca.installed matches 1.. run function cartographer_custom_statuses:allow_tick

#Do a Reset Attribute Check
execute if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:reset_attributes
execute if score $enchantment_rework ca.installed matches 1.. run function cartographer_enchantment_rework:reset_attributes

execute if entity @s[tag=ca.repeating_reloading_main] run tag @s remove ca.repeating_loaded_arrow



#scoreboard players set @s ca.load_crossbow_time 0
#scoreboard players set @s ca.draw_bow_time 0
#scoreboard players set @s ca.hold_shield_time 0
#scoreboard players set @s ca.use_eye_time 0
#scoreboard players set @s ca.aim_trident_time 0

#execute if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:calculator/process/start
