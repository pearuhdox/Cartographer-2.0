function cartographer_core:fetch_inventory

execute if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:calculator/mob/start
execute if score $rat ca.installed matches 1.. run function cartographer_rat:calculator/mob/start

tag @s remove ca.has_custom_attr