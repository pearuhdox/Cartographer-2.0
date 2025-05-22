
function cartographer_core:fetch_inventory
function cartographer_custom_attributes:calculator/mob/do_attr_calc

tag @s remove ca.has_custom_attr

execute if score @s ca.attr_healing_power_total matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/healing_power/tracking_start