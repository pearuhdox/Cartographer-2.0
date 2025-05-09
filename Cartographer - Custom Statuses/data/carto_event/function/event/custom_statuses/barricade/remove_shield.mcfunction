execute if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

scoreboard players remove @s ca.barricade_shields 1

execute unless entity @s[type=player] run playsound minecraft:item.shield.block hostile @a[distance=..16] ~ ~ ~ 0.8 0.75
execute if entity @s[type=player] run playsound minecraft:item.shield.block player @a[distance=..16] ~ ~ ~ 0.8 0.75

execute unless entity @s[type=player] if score @s ca.barricade_shields matches 1.. positioned ~ ~1 ~ run particle dust{color:[0.749,0.851,0.816],scale:1.25} ~ ~ ~ 0.25 0.25 0.25 1 10 normal
execute unless entity @s[type=player] anchored eyes positioned ^ ^ ^ run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#A3FFB3\",\"italic\":false,\"text\":\"Status Resist\"},{\"color\":\"#87E3FF\",\"italic\":false,\"text\":\"\nBarricade\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}
execute unless entity @s[type=player] anchored eyes positioned ^ ^-1 ^ run function carto_event:event/custom_statuses/barricade/popup
