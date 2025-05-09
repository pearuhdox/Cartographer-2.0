execute on attacker run tag @s add ca.used_vengeance_attack

execute on attacker run tag @s add ca.vengeance_owner

execute unless entity @s[type=player] run playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 1.5 0.75
execute if entity @s[type=player] run playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 1.5 0.75

execute unless entity @s[type=player] run particle minecraft:poof ~ ~0.5 ~ 0.2 0 0.2 0.05 10 normal
particle minecraft:crit ~ ~1 ~ 0.2 0.45 0.2 0.05 10 normal

execute if entity @s[type=player] anchored eyes positioned ^ ^ ^ facing entity @p feet positioned ^ ^ ^0.25 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#D87EE4\",\"italic\":false,\"text\":\"Enchant Effect\"},{\"color\":\"#B47EE4\",\"italic\":false,\"text\":\"\nVengeance\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}

execute store result storage cartographer:custom_enchantments damage double 1 run scoreboard players get $vengeance_damage ca.vengeance_stack
function cartographer_custom_enchantments:enchantment/passive/vengeance/damage with storage cartographer:custom_enchantments

execute on attacker run tag @s remove ca.vengeance_owner
