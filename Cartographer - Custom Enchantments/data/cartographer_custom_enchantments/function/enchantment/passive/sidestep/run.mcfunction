execute if entity @s[type=player] unless score @s ca.sidestep_time matches 31.. run playsound minecraft:item.shield.block player @s ~ ~ ~ 0.35 1.5
execute unless entity @s[type=player] unless score @s ca.sidestep_time matches 1.. run playsound minecraft:item.shield.block player @a[distance=..12] ~ ~ ~ 0.35 1.5
execute unless entity @s[type=player] unless score @s ca.sidestep_time matches 1.. anchored eyes positioned ^ ^ ^ run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#A3FFB3\",\"italic\":false,\"text\":\"Enchant Resist\"},{\"color\":\"#87E3FF\",\"italic\":false,\"text\":\"\nSidestep\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}

scoreboard players set @s ca.sidestep_time 60
function carto_event:api/create_single_entity_event {event:"custom_ench/sidestep",duration:60,delay:0,parameters:{},merge_behavior:"merge"}