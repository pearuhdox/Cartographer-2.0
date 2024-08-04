tag @s add ca.core_check_inv
tag @s add ca.core_check_inv_inspector

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
execute if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:reset_enchant_values
execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_enchantments:reset_enchant_values
execute if score $custom_statuses ca.installed matches 1.. run function cartographer_custom_statuses:reset_enchant_values
execute if score $enchantment_revamp ca.installed matches 1.. run function cartographer_enchantment_revamp:reset_enchant_values