scoreboard players set $total_time ca.ambushing_cooldown 28
scoreboard players operation $time_left ca.ambushing_cooldown = @s ca.ench_ambushing_lvl
scoreboard players operation $time_left ca.ambushing_cooldown *= $2 ca.CONSTANT

scoreboard players operation $total_time ca.ambushing_cooldown -= $time_left ca.ambushing_cooldown
scoreboard players operation @s ca.ambushing_cooldown = $total_time ca.ambushing_cooldown

execute store result score $damage ca.ench_ambushing_lvl run attribute @s attack_damage get 100

scoreboard players set $size ca.ench_ambushing_lvl 400

execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $size ca.ench_ambushing_lvl += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_ambushing_lvl *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_ambushing_lvl /= $100 ca.CONSTANT

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $size ca.ench_ambushing_lvl += @s ca.attr_aoe_damage_value
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $size ca.ench_ambushing_lvl *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $size ca.ench_ambushing_lvl /= $100 ca.CONSTANT

scoreboard players operation $half_size ca.ench_ambushing_lvl = $size ca.ench_ambushing_lvl
scoreboard players operation $size_neg_1 ca.ench_ambushing_lvl = $size ca.ench_ambushing_lvl

scoreboard players operation $half_size ca.ench_ambushing_lvl /= $2 ca.CONSTANT

scoreboard players remove $size_neg_1 ca.ench_ambushing_lvl 100

execute store result storage cartographer:custom_enchantments size double 0.01 run scoreboard players get $size ca.ench_ambushing_lvl
execute store result storage cartographer:custom_enchantments half_size double 0.01 run scoreboard players get $half_size ca.ench_ambushing_lvl
execute store result storage cartographer:custom_enchantments size_neg_1 double 0.01 run scoreboard players get $size_neg_1 ca.ench_ambushing_lvl

execute store result score $damage ca.ench_ambushing_lvl run attribute @s attack_damage get 100

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $damage ca.ench_ambushing_lvl


data modify storage gu:main out set value "-"
execute unless entity @s[type=hoglin] on target run function gu:generate
execute if entity @s[type=hoglin] as @p[gamemode=!creative,gamemode=!spectator] run function gu:generate
data modify storage cartographer:custom_enchantments victim set from storage gu:main out


execute summon text_display run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/create_telegraphing
function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/mob_ai_macro with storage cartographer:custom_enchantments