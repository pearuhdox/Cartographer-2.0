$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.827,0.600,1.000,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute if score $custom_attributes ca.installed matches 1.. as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_shocked] as $(owner) at @s run function carto_event:event/custom_statuses/shocked/modify_aoe/start

$execute as $(target) at @s run tag @s remove ca.has_custom_status_shocked
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_shocked

$execute as $(target) at @s unless score @s ca.shock_tick matches 0.. run scoreboard players set @s ca.shock_tick $(tick_rate)
$execute as $(target) at @s run scoreboard players add @s ca.shock_tick 1

$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. run data modify storage cartographer_custom_statuses:shocked data set value {}
$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. run data modify storage cartographer_custom_statuses:shocked data.targets set value 1
$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. run data modify storage cartographer_custom_statuses:shocked data.damage set from storage carto_event current[-1].parameters.damage
$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. run data modify storage cartographer_custom_statuses:shocked data.range set from storage carto_event current[-1].parameters.range
$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. run data modify storage cartographer_custom_statuses:shocked data.chain set from storage carto_event current[-1].parameters.chain
$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. run data modify storage cartographer_custom_statuses:shocked data.bounce_time set from storage carto_event current[-1].parameters.bounce_time
$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. run data modify storage cartographer_custom_statuses:shocked data.origin set from storage carto_event current[-1].parameters.target
$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. run data modify storage cartographer_custom_statuses:shocked data.owner set from storage carto_event current[-1].parameters.owner
$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. run data modify storage cartographer_custom_statuses:shocked data.proc_command set from storage carto_event current[-1].parameters.proc_command

$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. run damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)

$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. run scoreboard players add @s ca.shock_buffer $(damage)
$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. if score @s ca.shock_buffer matches 2.. anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:0.7,text:"-❤",color:"#9e41df",buffer_name:"shock"}

$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. run playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..12] ~ ~ ~ 0.75 1.5
$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters


$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. as @e[type=#cartographer_core:affected_by_carto,distance=0.25..$(range),sort=nearest,limit=$(targets)] at @s run function carto_event:event/custom_statuses/shocked/proc_start with storage cartographer_custom_statuses:shocked data

$execute as $(target) at @s if score @s ca.shock_tick matches $(tick_rate).. run scoreboard players set @s ca.shock_tick 0

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_shocked
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1