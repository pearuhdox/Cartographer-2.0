execute if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:enchantment/tick/has_enchant_check
execute if score $custom_statuses ca.installed matches 1.. run function cartographer_custom_statuses:enchantment/tick/has_enchant_check
execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_enchantments:enchantment/tick/has_enchant_check

execute if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:enchantment/tick/run
execute if score $custom_statuses ca.installed matches 1.. run function cartographer_custom_statuses:enchantment/tick/run
execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_enchantments:enchantment/tick/run

scoreboard players set $ench_timer ca.timer 10