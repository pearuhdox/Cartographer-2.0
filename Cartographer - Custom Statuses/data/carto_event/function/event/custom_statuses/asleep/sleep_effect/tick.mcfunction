execute anchored eyes positioned ^ ^0.2 ^ if predicate cartographer_core:periodic_tick/4 run function carto_event:event/custom_statuses/asleep/sleep_effect/vfx

execute if score duration= carto_event matches 31.. anchored eyes positioned ^ ^0.2 ^ if predicate cartographer_core:periodic_tick/20 run playsound minecraft:entity.fox.sleep hostile @a ~ ~ ~ 2 0.5
execute if score duration= carto_event matches 31.. anchored eyes positioned ^ ^0.2 ^ if predicate cartographer_core:periodic_tick/20 run playsound minecraft:entity.fox.sleep hostile @a ~ ~ ~ 2 0.5
execute if score duration= carto_event matches 31.. anchored eyes positioned ^ ^0.2 ^ if predicate cartographer_core:periodic_tick/20 run playsound minecraft:entity.fox.sleep hostile @a ~ ~ ~ 2 0.5

function carto_event:event/custom_statuses/asleep/sleep_effect/attributes

scoreboard players operation @s ca.asleep_hp_past = @s ca.asleep_hp
execute store result score @s ca.asleep_hp run data get entity @s Health 10

execute if score @s ca.asleep_hp_past > @s ca.asleep_hp run function carto_event:event/custom_statuses/asleep/sleep_effect/difference with storage carto_event current[-1].parameters