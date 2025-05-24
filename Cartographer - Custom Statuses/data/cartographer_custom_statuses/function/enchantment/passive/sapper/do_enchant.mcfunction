scoreboard players operation $value ca.ench_var = @s ca.ench_sapper_lvl

particle entity_effect{color:[0.804,0.361,0.671,1.00]} ~ ~0.2 ~ 0.4 0.2 0.4 1 8 normal

execute if entity @s[type=player] run function cartographer_custom_statuses:enchantment/passive/sapper/heal_player
execute unless entity @s[type=player] run function cartographer_custom_statuses:enchantment/passive/sapper/heal_mob
execute unless entity @s[type=player] anchored eyes positioned ^ ^ ^0.25 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#38baac\",\"italic\":false,\"text\":\"Enchant Effect\"},{\"color\":\"#2ce0cc\",\"italic\":false,\"text\":\"\nSapper\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}
