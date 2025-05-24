scoreboard players operation $value ca.ench_var = @s ca.ench_swiftness_lvl

execute store result storage cartographer_custom_statuses:macro value double 0.1 run scoreboard players get $value ca.ench_var
function cartographer_custom_statuses:enchantment/passive/swiftness/macro with storage cartographer_custom_statuses:macro


execute unless entity @s[type=player] run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 0.45 2
execute unless entity @s[type=player] anchored eyes positioned ^ ^ ^0.25 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#38baac\",\"italic\":false,\"text\":\"Enchant Effect\"},{\"color\":\"#2ce0cc\",\"italic\":false,\"text\":\"\nSwiftness\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}
