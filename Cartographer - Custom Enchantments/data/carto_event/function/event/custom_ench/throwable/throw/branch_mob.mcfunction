
execute if entity @s[type=player] run playsound minecraft:item.trident.throw player @a[distance=..16] ~ ~ ~ 1 0.75
execute unless entity @s[type=player] run playsound minecraft:item.trident.throw hostile @a[distance=..16] ~ ~ ~ 0.75 0.75

scoreboard players set $is_player ca.ench_throwable_lvl 0
execute if entity @s[type=player] run scoreboard players set $is_player ca.ench_throwable_lvl 1

data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out

scoreboard players set $mult ca.ench_var 100
scoreboard players set $min_result_damage ca.ench_var 0
function cartographer_custom_enchantments:enchantment/helper/calc_adp_dmg
execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $result_damage ca.ench_var

execute if entity @s[type=player] run data modify storage carto_event current[-1].parameters.motion_scale set value 2.0d
execute if entity @s[type=player] run data modify storage carto_event current[-1].parameters.step_scale set value 0.1d

execute unless entity @s[type=player] run data modify storage carto_event current[-1].parameters.motion_scale set value 1.5d
execute unless entity @s[type=player] run data modify storage carto_event current[-1].parameters.step_scale set value 0.075d

data modify storage cartographer:custom_enchantments motion_scale set from storage carto_event current[-1].parameters.motion_scale
data modify storage cartographer:custom_enchantments step_scale set from storage carto_event current[-1].parameters.step_scale

$execute as $(target) unless entity @s[type=player] at @s anchored eyes positioned ^ ^ ^ rotated as $(telegraph) positioned ^ ^ ^0.25 summon item_display run function carto_event:event/custom_ench/throwable/projectile/create with storage carto_event current[-1].parameters

$execute as $(target) if score @s ca.throwable_multishot matches 1.. unless entity @s[type=player] at @s anchored eyes positioned ^ ^ ^0.25 run function carto_event:event/custom_ench/throwable/projectile/multishot
