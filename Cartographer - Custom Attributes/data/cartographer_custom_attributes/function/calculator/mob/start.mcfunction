data modify storage cartographer_custom_attributes:calculator equips_attr set value {}
data modify storage cartographer_custom_attributes:calculator equips_custom set value {}

attribute @s attack_damage modifier remove ca.adaptive_damage_value
attribute @s attack_damage modifier remove ca.adaptive_damage_percent
attribute @s attack_damage modifier remove ca.total_damage_value
attribute @s attack_damage modifier remove ca.total_damage_percent

execute if entity @s[tag=ca.attr_slot_feet] run function cartographer_custom_attributes:calculator/mob/get_item_info {slot:"feet",path:"equipment.feet"}
execute if entity @s[tag=ca.attr_slot_legs] run function cartographer_custom_attributes:calculator/mob/get_item_info {slot:"legs",path:"equipment.legs"}
execute if entity @s[tag=ca.attr_slot_body] run function cartographer_custom_attributes:calculator/mob/get_item_info {slot:"body",path:"equipment.chest"}
execute if entity @s[tag=ca.attr_slot_head] run function cartographer_custom_attributes:calculator/mob/get_item_info {slot:"head",path:"equipment.head"}

execute if entity @s[tag=ca.attr_slot_offh] run function cartographer_custom_attributes:calculator/mob/get_item_info {slot:"offh",path:"equipment.offhand"}
execute if entity @s[tag=ca.attr_slot_main] run function cartographer_custom_attributes:calculator/mob/get_item_info {slot:"main",path:"equipment.mainhand"}

function cartographer_custom_attributes:calculator/mob/score_calc

execute if entity @s[tag=ca.attr_slot_feet,tag=ca.remove_attr_slot] run item replace entity @s armor.feet with air
execute if entity @s[tag=ca.attr_slot_legs,tag=ca.remove_attr_slot] run item replace entity @s armor.legs with air
execute if entity @s[tag=ca.attr_slot_body,tag=ca.remove_attr_slot] run item replace entity @s armor.chest with air
execute if entity @s[tag=ca.attr_slot_head,tag=ca.remove_attr_slot] run item replace entity @s armor.head with air

execute if entity @s[tag=ca.attr_slot_offh,tag=ca.remove_attr_slot] run item replace entity @s weapon.offhand with air
execute if entity @s[tag=ca.attr_slot_main,tag=ca.remove_attr_slot] run item replace entity @s weapon.mainhand with air

tag @s remove ca.has_custom_attr

tag @s remove ca.attr_slot_head
tag @s remove ca.attr_slot_body
tag @s remove ca.attr_slot_legs
tag @s remove ca.attr_slot_feet
tag @s remove ca.attr_slot_main
tag @s remove ca.attr_slot_offh

execute if score @s ca.attr_healing_power_total matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/healing_power/tracking_start