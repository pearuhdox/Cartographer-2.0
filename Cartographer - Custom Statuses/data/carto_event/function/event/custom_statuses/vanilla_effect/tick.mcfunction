$execute as $(target) at @s if score duration= carto_event matches 1.. run scoreboard players operation $vanilla_duration ca.status_var = duration= carto_event
$execute as $(target) at @s if score duration= carto_event matches 1.. run scoreboard players add $vanilla_duration ca.status_var 20
$execute as $(target) at @s if score duration= carto_event matches 1.. store result storage cartographer:custom_statuses vanilla_duration int 0.05 run scoreboard players get $vanilla_duration ca.status_var
$execute as $(target) at @s if score duration= carto_event matches 1.. run data modify storage cartographer:custom_statuses vanilla_amplifier set value $(amplifier)
$execute as $(target) at @s if score duration= carto_event matches 1.. run data modify storage cartographer:custom_statuses vanilla_effect set value "$(effect)"
$execute as $(target) at @s if score duration= carto_event matches 1.. run function carto_event:event/custom_statuses/vanilla_effect/display with storage cartographer:custom_statuses

scoreboard players set $ve_override ca.status_var 0

$execute as $(target) at @s if score duration= carto_event matches 1 if data entity @s active_effects[{id:"$(effect)"}].hidden_effect run scoreboard players set $ve_override ca.status_var 1
$execute as $(target) at @s if score duration= carto_event matches 1 unless score $ve_override ca.status_var matches 1.. run effect clear @s $(effect)

$execute as $(target) at @s if score duration= carto_event matches 1 if score $ve_override ca.status_var matches 1.. store result score $ve_dur ca.status_var run data get entity @s active_effects[{id:"$(effect)"}].hidden_effect.duration
$execute as $(target) at @s if score duration= carto_event matches 1 if score $ve_override ca.status_var matches 1.. run scoreboard players operation $ve_dur ca.status_var /= $20 ca.CONSTANT
$execute as $(target) at @s if score duration= carto_event matches 1 if score $ve_override ca.status_var matches 1.. store result score $ve_amp ca.status_var run data get entity @s active_effects[{id:"$(effect)"}].hidden_effect.amplifier

$execute as $(target) at @s if score duration= carto_event matches 1 if score $ve_override ca.status_var matches 1.. run data modify storage cartographer_custom_statuses:vanilla_effect data set value {}
$execute as $(target) at @s if score duration= carto_event matches 1 if score $ve_override ca.status_var matches 1.. store result storage cartographer_custom_statuses:vanilla_effect data.duration int 1 run scoreboard players get $ve_dur ca.status_var
$execute as $(target) at @s if score duration= carto_event matches 1 if score $ve_override ca.status_var matches 1.. store result storage cartographer_custom_statuses:vanilla_effect data.amplifier int 1 run scoreboard players get $ve_amp ca.status_var
$execute as $(target) at @s if score duration= carto_event matches 1 if score $ve_override ca.status_var matches 1.. run data modify storage cartographer_custom_statuses:vanilla_effect data.effect set from storage carto_event current[-1].parameters.effect

$execute as $(target) at @s if score duration= carto_event matches 1 if score $ve_override ca.status_var matches 1.. run function carto_event:event/custom_statuses/vanilla_effect/hidden_effect with storage cartographer_custom_statuses:vanilla_effect data

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run effect clear @s
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1