execute if entity @s[type=player] if score @s ca.hardened_type matches 3 run playsound minecraft:item.shield.block player @s ~ ~ ~ 1 1.5
execute unless entity @s[type=player] if score @s ca.hardened_type matches 3 run playsound minecraft:item.shield.block hostile @a[distance=..12] ~ ~ ~ 1.5 1.5

execute unless entity @s[type=player] if score @s ca.hardened_type matches 3 anchored eyes positioned ^ ^ ^ run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#A3FFB3\",\"italic\":false,\"text\":\"Enchant Resist\"},{\"color\":\"#87E3FF\",\"italic\":false,\"text\":\"\\\\nHardened\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}

scoreboard players set @s ca.hardened_type 3