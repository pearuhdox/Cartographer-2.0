scoreboard players set @s ca.resistor_queue 0

execute if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

execute if entity @s[type=player] run playsound minecraft:entity.breeze.deflect player @a[distance=..16] ~ ~ ~ 2 0.75
execute unless entity @s[type=player] run playsound minecraft:entity.breeze.deflect hostile @a[distance=..16] ~ ~ ~ 2 0.75
execute unless entity @s[type=player] anchored eyes positioned ^ ^ ^ run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#A3FFB3\",\"italic\":false,\"text\":\"Status Resist\"},{\"color\":\"#87E3FF\",\"italic\":false,\"text\":\"\nNullify\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}

execute unless entity @s[type=player] run particle minecraft:poof ~ ~1 ~ 0.25 0.25 0.25 0.05 15 normal

$scoreboard players set @s ca.nullify_cooldown $(cooldown)

scoreboard players set $ba_override ca.status_var 0
execute if data entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect run scoreboard players set $ba_override ca.status_var 1
execute unless score $ba_override ca.status_var matches 1.. run effect clear @s minecraft:resistance

execute if score $ba_override ca.status_var matches 1.. run function carto_event:event/custom_statuses/evasion/hidden_effect