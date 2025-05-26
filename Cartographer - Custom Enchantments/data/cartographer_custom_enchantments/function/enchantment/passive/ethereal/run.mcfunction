function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"passive/",enchantment:"ethereal",type:"passive"}

scoreboard players set $time ca.ethereal_time 3

scoreboard players operation $time ca.ethereal_time *= @s ca.ench_ethereal_lvl

execute if score $time ca.ethereal_time matches 51.. run scoreboard players set $time ca.ethereal_time 50
scoreboard players add $time ca.ethereal_time 10

scoreboard players operation @s ca.ethereal_time = $time ca.ethereal_time
execute store result storage cartographer_custom_enchantments:macro time int 1 run scoreboard players get @s ca.ethereal_time

execute unless entity @s[type=player] summon item_display run function cartographer_custom_enchantments:enchantment/passive/ethereal/create_telegraph/pos_x
execute unless entity @s[type=player] summon item_display run function cartographer_custom_enchantments:enchantment/passive/ethereal/create_telegraph/neg_x
#execute unless entity @s[type=player] summon item_display run function cartographer_custom_enchantments:enchantment/passive/ethereal/create_telegraph/pos_z
#execute unless entity @s[type=player] summon item_display run function cartographer_custom_enchantments:enchantment/passive/ethereal/create_telegraph/neg_z

execute if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/ethereal/macro with storage cartographer_custom_enchantments:macro
execute unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/ethereal/macro_mob with storage cartographer_custom_enchantments:macro

#execute unless entity @s[type=player] anchored eyes positioned ^ ^ ^ run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#D87EE4\",\"italic\":false,\"text\":\"Enchant Effect\"},{\"color\":\"#B47EE4\",\"italic\":false,\"text\":\"\\\\nEthereal\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}
