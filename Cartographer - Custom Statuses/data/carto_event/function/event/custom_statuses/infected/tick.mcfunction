$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.224,0.188,0.278,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute if score $custom_attributes ca.installed matches 1.. as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_infected] as $(owner) at @s run function carto_event:event/custom_statuses/infected/modify_aoe/start

$execute as $(target) at @s run tag @s remove ca.has_custom_status_infected
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_infected

$execute as $(target) at @s unless score @s ca.infect_tick matches 0.. run scoreboard players set @s ca.infect_tick $(tick_rate)
$execute as $(target) at @s run scoreboard players add @s ca.infect_tick 1

$execute as $(target) at @s run scoreboard players operation @s ca.infect_duration = duration= carto_event
$execute as $(target) at @s run scoreboard players set @s ca.infect_targets $(targets)
$execute as $(target) at @s run scoreboard players set @s ca.infect_damage $(damage)
$execute as $(target) at @s run scoreboard players set @s ca.infect_range $(range)
$execute as $(target) at @s run scoreboard players set @s ca.infect_death_dmg $(death_damage)
$execute as $(target) at @s run scoreboard players set @s ca.infect_tick_rate $(tick_rate)

$execute as $(target) at @s if score @s ca.infect_tick matches $(tick_rate).. run function carto_event:event/custom_statuses/infected/damage with storage carto_event current[-1].parameters

$execute as $(target) at @s if score @s ca.infect_tick matches $(tick_rate).. run scoreboard players add @s ca.infect_buffer $(damage)
$execute as $(target) at @s if score @s ca.infect_tick matches $(tick_rate).. if score @s ca.infect_buffer matches 2.. anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:0.7,text:"-❤",color:"#721aff",buffer_name:"infect"}

$execute as $(target) at @s if score @s ca.infect_tick matches $(tick_rate).. run playsound minecraft:entity.slime.attack hostile @a[distance=..12] ~ ~ ~ 1 0.5
$execute as $(target) at @s if score @s ca.infect_tick matches $(tick_rate).. if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if score @s ca.infect_tick matches $(tick_rate).. run scoreboard players set @s ca.infect_tick 0

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_infected
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1