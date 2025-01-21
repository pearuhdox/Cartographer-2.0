$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass by @p[tag=ca.repulsion_owner]

tag @s add co_rotation_lock

scoreboard players operation @s co_send = $force ca.ench_var
scoreboard players operation @s co_send *= $-1 ca.CONSTANT
scoreboard players set @s co_y 4

playsound minecraft:entity.breeze.shoot player @a[distance=..16] ~ ~ ~ 0.3 1.5
particle minecraft:gust ~ ~ ~ 0 0 0 0 1 force

execute as @s at @s facing entity @p[tag=ca.repulsion_owner] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute as @s at @s run function motion:motion/push


function cartographer_custom_statuses:apply_status/apply/set_target
execute if score $allow_statuses_target ca.ench_repulsion_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/custom_statuses/status_target

execute if score $allow_statuses_self ca.ench_repulsion_lvl matches 1.. on attacker if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/custom_statuses/status_self_player

scoreboard players add $hits ca.ench_repulsion_lvl 1