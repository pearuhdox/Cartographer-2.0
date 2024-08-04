data modify storage cartographer_custom_statuses:siphon health set value {}

data modify storage cartographer_custom_statuses:siphon health.damage set from storage carto_event current[-1].parameters.amount
$execute store result storage cartographer_custom_statuses:siphon health.heal double 1 run data get storage cartographer_custom_statuses:siphon health.damage $(amplifier)

$execute as $(target) at @s run playsound minecraft:block.bubble_column.whirlpool_inside hostile @a[distance=..16] ~ ~ ~ 1.5 1.5
$execute as $(target) at @s positioned ~ ~1 ~ run function carto_event:event/custom_statuses/siphon/health/vfx
$execute as $(target) at @s positioned ~ ~1 ~ positioned ^ ^ ^ facing entity $(owner) feet rotated ~ ~-5 run function carto_event:event/custom_statuses/siphon/health/raycast_start

$execute as $(target) at @s run damage @s $(amount) cartographer_custom_statuses:status_damage by $(owner)

$execute as $(target) at @s run scoreboard players add @s ca.siphon_heal_buffer $(amount)
$execute as $(target) at @s if score @s ca.siphon_heal_buffer matches 2.. anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:0.7,text:"-❤",color:"#bf4e9c",buffer_name:"siphon_heal"}


$execute as $(owner) at @s store result score $siphon_heal ca.status_var run data get storage cartographer_custom_statuses:siphon health.heal 10
$execute as $(owner) at @s store result score $siphon_heal ca.status_var run scoreboard players operation @s ca.siphon_heal += $siphon_heal ca.status_var
$execute as $(owner) at @s run tag @s add ca.do_siphon_heal

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

return 0