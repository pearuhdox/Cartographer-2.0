execute if score @s ca.equip_leather_boots matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_leather_leggings matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_leather_chestplate matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_leather_helmet matches 1.. run scoreboard players set @s ca.core_delay_check 2

execute if score @s ca.equip_golden_boots matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_golden_leggings matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_golden_chestplate matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_golden_helmet matches 1.. run scoreboard players set @s ca.core_delay_check 2

execute if score @s ca.equip_chainmail_boots matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_chainmail_leggings matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_chainmail_chestplate matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_chainmail_helmet matches 1.. run scoreboard players set @s ca.core_delay_check 2

execute if score @s ca.equip_iron_boots matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_iron_leggings matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_iron_chestplate matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_iron_helmet matches 1.. run scoreboard players set @s ca.core_delay_check 2

execute if score @s ca.equip_diamond_boots matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_diamond_leggings matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_diamond_chestplate matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_diamond_helmet matches 1.. run scoreboard players set @s ca.core_delay_check 2

execute if score @s ca.equip_netherite_boots matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_netherite_leggings matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_netherite_chestplate matches 1.. run scoreboard players set @s ca.core_delay_check 2
execute if score @s ca.equip_netherite_helmet matches 1.. run scoreboard players set @s ca.core_delay_check 2

execute if score @s ca.equip_turtle_helmet matches 1.. run scoreboard players set @s ca.core_delay_check 2

scoreboard players set @s ca.equip_leather_boots 0
scoreboard players set @s ca.equip_leather_leggings 0
scoreboard players set @s ca.equip_leather_chestplate 0
scoreboard players set @s ca.equip_leather_helmet 0

scoreboard players set @s ca.equip_golden_boots 0
scoreboard players set @s ca.equip_golden_leggings 0
scoreboard players set @s ca.equip_golden_chestplate 0
scoreboard players set @s ca.equip_golden_helmet 0

scoreboard players set @s ca.equip_chainmail_boots 0
scoreboard players set @s ca.equip_chainmail_leggings 0
scoreboard players set @s ca.equip_chainmail_chestplate 0
scoreboard players set @s ca.equip_chainmail_helmet 0

scoreboard players set @s ca.equip_iron_boots 0
scoreboard players set @s ca.equip_iron_leggings 0
scoreboard players set @s ca.equip_iron_chestplate 0
scoreboard players set @s ca.equip_iron_helmet 0

scoreboard players set @s ca.equip_diamond_boots 0
scoreboard players set @s ca.equip_diamond_leggings 0
scoreboard players set @s ca.equip_diamond_chestplate 0
scoreboard players set @s ca.equip_diamond_helmet 0

scoreboard players set @s ca.equip_netherite_boots 0
scoreboard players set @s ca.equip_netherite_leggings 0
scoreboard players set @s ca.equip_netherite_chestplate 0
scoreboard players set @s ca.equip_netherite_helmet 0

scoreboard players set @s ca.equip_turtle_helmet 0

scoreboard players set @s ca.attribute_cleanse_delay 1


#Remove Enchant Tick Tag
tag @s remove ca.enchant_tick

execute if score @s ca.drop_item matches 1.. run function cartographer_core:loop/player/break_item
execute if score @s ca.drop_item matches 1.. run scoreboard players set @s ca.drop_item 0

execute unless entity @s[tag=ca.suppress_inv_update] if entity @s[tag=ca.do_inv_fetch] run function cartographer_core:fetch_inventory
execute if entity @s[tag=ca.do_inv_reset] if entity @s[tag=ca.do_inv_fetch] run function cartographer_core:fetch_inventory

#Do Status Calculations Here
execute unless entity @s[tag=ca.suppress_inv_update] if score $custom_statuses ca.installed matches 1.. run function cartographer_custom_statuses:calculator/process/coating_check

#Do Enchantment Resets Here
execute if entity @s[tag=ca.do_inv_reset] if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:do_reset_calc
execute if entity @s[tag=ca.do_inv_reset] if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_enchantments:do_reset_calc
execute if entity @s[tag=ca.do_inv_reset] if score $custom_statuses ca.installed matches 1.. run function cartographer_custom_statuses:do_reset_calc
execute if entity @s[tag=ca.do_inv_reset] if score $enchantment_rework ca.installed matches 1.. run function cartographer_enchantment_rework:do_reset_calc

#Do Enchant Calculation Here
execute unless entity @s[tag=ca.suppress_inv_update] if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:do_ench_calc
execute unless entity @s[tag=ca.suppress_inv_update] if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_enchantments:do_ench_calc
execute unless entity @s[tag=ca.suppress_inv_update] if score $custom_statuses ca.installed matches 1.. run function cartographer_custom_statuses:do_ench_calc
execute unless entity @s[tag=ca.suppress_inv_update] if score $enchantment_rework ca.installed matches 1.. run function cartographer_enchantment_rework:do_ench_calc

#Do Attribute Calculation Here
execute unless entity @s[tag=ca.suppress_inv_update] if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:do_attr_calc
execute unless entity @s[tag=ca.suppress_inv_update] if score $rat ca.installed matches 1.. run function cartographer_rat:do_attr_calc

#Reset Attributes from Enchantments if required
execute unless entity @s[tag=ca.suppress_inv_update] if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:reset_attributes
execute unless entity @s[tag=ca.suppress_inv_update] if score $enchantment_rework ca.installed matches 1.. run function cartographer_enchantment_rework:reset_attributes

#Enable Enchant Ticking if necessary
execute if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:allow_tick
execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_enchantments:allow_tick
execute if score $custom_statuses ca.installed matches 1.. run function cartographer_custom_statuses:allow_tick

#Reset tags
tag @s remove ca.do_inv_reset
tag @s remove ca.suppress_inv_update