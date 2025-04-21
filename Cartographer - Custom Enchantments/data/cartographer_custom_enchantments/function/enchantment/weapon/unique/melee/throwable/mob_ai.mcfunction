scoreboard players set $total_time ca.throwable_cooldown 14
scoreboard players operation $time_left ca.throwable_cooldown = @s ca.ench_throwable_lvl

scoreboard players operation $total_time ca.throwable_cooldown -= $time_left ca.throwable_cooldown
scoreboard players operation @s ca.throwable_cooldown = $total_time ca.throwable_cooldown

execute store result score $time ca.throwable_time run data get entity @s equipment.mainhand.components.minecraft:custom_data.cast_time
execute if score $time ca.throwable_time matches 0 run scoreboard players set $time ca.throwable_time 10

scoreboard players set @s ca.throwable_time 10
scoreboard players operation @s ca.throwable_time -= $time ca.throwable_time

execute if score @s ca.throwable_time matches 1.. run scoreboard players set @s ca.throwable_time 0

execute summon text_display run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/throwable/create_telegraphing
function cartographer_custom_enchantments:enchantment/weapon/unique/melee/throwable/mob_ai_macro with storage cartographer:custom_enchantments