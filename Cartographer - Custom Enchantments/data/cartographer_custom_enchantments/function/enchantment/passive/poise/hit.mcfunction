execute if entity @s[type=player] if score @s ca.poise_active matches 1.. run playsound minecraft:item.shield.block player @s ~ ~ ~ 0.35 1.5
execute unless entity @s[type=player] if score @s ca.poise_active matches 1.. run playsound minecraft:item.shield.block player @a[distance=..12] ~ ~ ~ 0.35 1.5
execute unless entity @s[type=player] if score @s ca.poise_active matches 1.. anchored eyes positioned ^ ^ ^ run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#A3FFB3\",\"italic\":false,\"text\":\"Enchant Resist\"},{\"color\":\"#87E3FF\",\"italic\":false,\"text\":\"\\\\nPoise\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}
