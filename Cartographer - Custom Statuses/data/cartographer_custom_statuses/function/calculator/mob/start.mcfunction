#data modify storage cartographer_custom_attributes:calculator equips_attr set value {}
#data modify storage cartographer_custom_attributes:calculator equips_custom set value {}

function cartographer_core:amd/read

execute if data storage amd:mob_data working_data.data.custom_status_equips run data modify storage cartographer_custom_statuses:mob equips set from storage amd:mob_data working_data.data.custom_status_equips
execute unless data storage amd:mob_data working_data.data.custom_status_equips run data modify storage cartographer_custom_statuses:mob equips set value []

execute if entity @s[tag=ca.status_slot_feet] run function cartographer_custom_statuses:calculator/mob/get_item_info {path:"equipment.feet"}
execute if entity @s[tag=ca.status_slot_legs] run function cartographer_custom_statuses:calculator/mob/get_item_info {path:"equipment.legs"}
execute if entity @s[tag=ca.status_slot_body] run function cartographer_custom_statuses:calculator/mob/get_item_info {path:"equipment.chest"}
execute if entity @s[tag=ca.status_slot_head] run function cartographer_custom_statuses:calculator/mob/get_item_info {path:"equipment.head"}

execute if entity @s[tag=ca.status_slot_offh] run function cartographer_custom_statuses:calculator/mob/get_item_info {path:"equipment.offhand"}
execute if entity @s[tag=ca.status_slot_main] run function cartographer_custom_statuses:calculator/mob/get_item_info {path:"equipment.mainhand"}

data modify storage amd:mob_data working_data.data.custom_status_equips set from storage cartographer_custom_statuses:mob equips

function cartographer_custom_statuses:calculator/mob/create_actions

function cartographer_core:amd/write

execute if entity @s[tag=ca.status_slot_feet,tag=ca.remove_status_slot] run item replace entity @s armor.feet with air
execute if entity @s[tag=ca.status_slot_legs,tag=ca.remove_status_slot] run item replace entity @s armor.legs with air
execute if entity @s[tag=ca.status_slot_body,tag=ca.remove_status_slot] run item replace entity @s armor.chest with air
execute if entity @s[tag=ca.status_slot_head,tag=ca.remove_status_slot] run item replace entity @s armor.head with air

execute if entity @s[tag=ca.status_slot_offh,tag=ca.remove_status_slot] run item replace entity @s weapon.offhand with air
execute if entity @s[tag=ca.status_slot_main,tag=ca.remove_status_slot] run item replace entity @s weapon.mainhand with air

tag @s remove ca.has_custom_status

tag @s remove ca.status_slot_head
tag @s remove ca.status_slot_body
tag @s remove ca.status_slot_legs
tag @s remove ca.status_slot_feet
tag @s remove ca.status_slot_main
tag @s remove ca.status_slot_offh