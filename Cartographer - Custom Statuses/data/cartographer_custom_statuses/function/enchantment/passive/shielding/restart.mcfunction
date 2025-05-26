execute unless entity @s[type=player] run particle minecraft:block{block_state:"minecraft:resin_block"} ~ ~0.75 ~ 0.15 0.35 0.15 0 15 normal
execute unless entity @s[type=player] run playsound minecraft:entity.creaking.activate hostile @a[distance=..16] ~ ~ ~ 1 1.5
execute unless entity @s[type=player] anchored eyes positioned ^ ^ ^ run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#E5C863\",\"italic\":false,\"text\":\"Enchant Effect\"},{\"color\":\"#E5E363\",\"italic\":false,\"text\":\"\nShielding\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}

execute if entity @s[type=player] run playsound minecraft:entity.creaking.activate hostile @a[distance=..16] ~ ~ ~ 0.7 1.5

scoreboard players set @s ca.shielding_state 0

scoreboard players set $amount ca.abs_handler 1
scoreboard players set $duration ca.abs_handler 30
scoreboard players operation $cap ca.abs_handler = @s ca.ench_shielding_lvl
scoreboard players operation $cap ca.abs_handler *= $2 ca.CONSTANT
scoreboard players add $cap ca.abs_handler 6
execute if score $cap ca.abs_handler matches 13.. run scoreboard players set $cap ca.abs_handler 12

scoreboard players operation @s ca.absorption_buffer += $amount ca.abs_handler

function cartographer_core:handlers/absorption/add


tag @s remove ca.shielding_restart
