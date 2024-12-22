function cartographer_custom_statuses:apply_status/apply/set_target
execute if score $allow_statuses_target ca.ench_ambushing_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/custom_statuses/status_target

execute as @e[type=#cartographer_core:affected_by_carto,distance=0.25..3.5] at @s run function carto_event:event/custom_ench/ambushing/moving/push with storage carto_event current[-1].parameters

function carto_event:event/custom_ench/ambushing/moving/appear_vfx

execute unless entity @s[type=player] run playsound minecraft:entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 1 0.85
execute if entity @s[type=player] run playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 1.5 0.85