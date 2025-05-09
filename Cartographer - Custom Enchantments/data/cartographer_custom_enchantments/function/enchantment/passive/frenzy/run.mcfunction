execute unless entity @s[type=player] run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"passive/",enchantment:"frenzy",type:"passive"}

execute unless score @s ca.frenzy_stack matches 8.. run scoreboard players add @s ca.frenzy_stack 1
scoreboard players set @s ca.frenzy_duration 160

execute unless entity @s[type=player] anchored eyes positioned ^ ^ ^ run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#cd9f40\",\"italic\":false,\"text\":\"Enchant Effect\"},{\"color\":\"#ead459\",\"italic\":false,\"text\":\"\nFrenzy\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}

function carto_event:api/create_single_entity_event {event:"custom_ench/frenzy",duration:160,delay:0,parameters:{},merge_behavior:"merge"}