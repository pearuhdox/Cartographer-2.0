#function cartographer_core:pldata/read

#data modify storage cartographer_custom_attributes:calculator custom_attributes set value {}
#data modify storage cartographer_custom_attributes:calculator custom_attributes set from storage cartographer:player_data main.working_data.cartographer.custom_attributes

scoreboard players set $disable_mainhand ca.attr_var 0
scoreboard players set $disable_offhand ca.attr_var 0

scoreboard players set $disable_head ca.attr_var 0
scoreboard players set $disable_body ca.attr_var 0
scoreboard players set $disable_legs ca.attr_var 0
scoreboard players set $disable_feet ca.attr_var 0

execute if items entity @s weapon.mainhand #cartographer_core:arrow if items entity @s weapon.offhand #cartographer_core:shoots_arrow run scoreboard players set $disable_mainhand ca.attr_var 1
execute if items entity @s weapon.offhand #cartographer_core:arrow if items entity @s weapon.mainhand #cartographer_core:shoots_arrow run scoreboard players set $disable_offhand ca.attr_var 1

execute if items entity @s weapon.mainhand #cartographer_core:wearables run scoreboard players set $disable_mainhand ca.attr_var 1
execute if items entity @s weapon.offhand #cartographer_core:wearables run scoreboard players set $disable_offhand ca.attr_var 1

attribute @s attack_damage modifier remove ca.adaptive_damage_value
attribute @s attack_damage modifier remove ca.adaptive_damage_percent
attribute @s attack_damage modifier remove ca.total_damage_value
attribute @s attack_damage modifier remove ca.total_damage_percent

execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/ranged_damage
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/ranged_velocity
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/combat_luck
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/potion_size
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/aoe_size
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/aoe_damage
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/status_inflict_damage
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/status_inflict_duration
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/status_inflict_potency
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/status_apply_duration
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/status_apply_potency
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/healing_power
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/lucky_hit_chance
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/lucky_hit_damage
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/restrike_hit_chance
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/restrike_hit_damage
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/restrike_hit_amount
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/restrike_hit_rate
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/chaining_hit_chance
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/chaining_hit_damage
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/chaining_hit_amount
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/life_drain_chance
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/life_drain_amount
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/extra_jump_count
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/airdash_count

execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/adaptive_damage
execute unless score $disable_custom_attr_syntax ca.gamerule matches 1 run function cartographer_custom_attributes:calculator/process/create_attribute/attribute/total_damage

#data modify storage cartographer:player_data main.working_data.cartographer.custom_attributes set value {}
#data modify storage cartographer:player_data main.working_data.cartographer.custom_attributes set from storage cartographer_custom_attributes:calculator custom_attributes

#function cartographer_core:pldata/write

execute if score @s ca.attr_healing_power_total matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/healing_power/tracking_start