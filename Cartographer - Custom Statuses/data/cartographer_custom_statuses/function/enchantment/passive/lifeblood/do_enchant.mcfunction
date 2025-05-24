scoreboard players operation $value ca.ench_var = @s ca.ench_lifeblood_lvl

particle entity_effect{color:[0.145,0.322,0.647,1.00]} ~ ~0.2 ~ 0.4 0.2 0.4 1 8 normal

function cartographer_custom_statuses:enchantment/passive/lifeblood/apply

execute if entity @s[type=player] run playsound minecraft:entity.witch.drink player @s ~ ~ ~ 0.5 1.5
execute unless entity @s[type=player] run playsound minecraft:entity.witch.drink hostile @a[distance=..16] ~ ~ ~ 0.5 1.5
execute unless entity @s[type=player] anchored eyes positioned ^ ^ ^0.25 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#38baac\",\"italic\":false,\"text\":\"Enchant Effect\"},{\"color\":\"#2ce0cc\",\"italic\":false,\"text\":\"\nLifeblood\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}
