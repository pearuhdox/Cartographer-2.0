execute if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:reset_attributes
execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_enchantments:reset_attributes
execute if score $custom_statuses ca.installed matches 1.. run function cartographer_custom_statuses:reset_attributes

scoreboard players set @s ca.attribute_cleanse_delay 0