execute store result score $popup_val ca.var run random value 1..7

execute if entity @s[type=player] run playsound minecraft:block.amethyst_block.chime player @a[distance=..16] ~ ~ ~ 1.5 0.75
execute if entity @s[type=player] run playsound minecraft:block.amethyst_block.chime player @a[distance=..16] ~ ~ ~ 1.5 0.75
execute if entity @s[type=player] run playsound minecraft:block.amethyst_block.chime player @a[distance=..16] ~ ~ ~ 1.5 0.75

execute unless entity @s[type=player] run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..16] ~ ~ ~ 1.5 0.75
execute unless entity @s[type=player] run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..16] ~ ~ ~ 1.5 0.75
execute unless entity @s[type=player] run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..16] ~ ~ ~ 1.5 0.75

execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.35 0.35 0.35 0 5 normal

execute if score $popup_val ca.var matches 1 rotated ~ 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#258c19\",\"italic\":false,\"text\":\"+🍀\"}]",popup_duration:25,teleport_duration:2,scale:1.0,background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}
execute if score $popup_val ca.var matches 2 rotated ~15 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#258c19\",\"italic\":false,\"text\":\"+🍀\"}]",popup_duration:25,teleport_duration:2,scale:1.0,background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}
execute if score $popup_val ca.var matches 3 rotated ~30 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#258c19\",\"italic\":false,\"text\":\"+🍀\"}]",popup_duration:25,teleport_duration:2,scale:1.0,background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}
execute if score $popup_val ca.var matches 4 rotated ~45 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#258c19\",\"italic\":false,\"text\":\"+🍀\"}]",popup_duration:25,teleport_duration:2,scale:1.0,background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}
execute if score $popup_val ca.var matches 5 rotated ~-15 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#258c19\",\"italic\":false,\"text\":\"+🍀\"}]",popup_duration:25,teleport_duration:2,scale:1.0,background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}
execute if score $popup_val ca.var matches 6 rotated ~-30 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#258c19\",\"italic\":false,\"text\":\"+🍀\"}]",popup_duration:25,teleport_duration:2,scale:1.0,background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}
execute if score $popup_val ca.var matches 7 rotated ~-45 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#258c19\",\"italic\":false,\"text\":\"+🍀\"}]",popup_duration:25,teleport_duration:2,scale:1.0,background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}