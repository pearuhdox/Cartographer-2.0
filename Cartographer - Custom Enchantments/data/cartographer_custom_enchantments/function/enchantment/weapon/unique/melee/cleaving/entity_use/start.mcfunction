tag @s remove ca.end_cleaving

execute summon text_display run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/cleaving/entity_use/create_telegraph

scoreboard players set $size ca.ench_cleaving_lvl 400

execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $size ca.ench_cleaving_lvl += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_cleaving_lvl *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_cleaving_lvl /= $100 ca.CONSTANT

execute store result storage cartographer:custom_enchantments size double 0.01 run scoreboard players get $size ca.ench_cleaving_lvl

scoreboard players operation $half_size ca.ench_cleaving_lvl = $size ca.ench_cleaving_lvl
scoreboard players operation $size_neg_1 ca.ench_cleaving_lvl = $size ca.ench_cleaving_lvl

scoreboard players remove $size_neg_1 ca.ench_cleaving_lvl 100
scoreboard players operation $half_size ca.ench_cleaving_lvl /= $2 ca.CONSTANT

execute store result storage cartographer:custom_enchantments size_neg_1 double 0.01 run scoreboard players get $size_neg_1 ca.ench_cleaving_lvl
execute store result storage cartographer:custom_enchantments half_size double 0.01 run scoreboard players get $half_size ca.ench_cleaving_lvl

execute store result storage cartographer:custom_enchantments damage double 1 run attribute @s minecraft:attack_damage get

execute on target store result storage cartographer:custom_enchantments delay int 1 run scoreboard players get @s ca.special_attack_delay

function cartographer_custom_enchantments:enchantment/weapon/unique/melee/cleaving/entity_use/macro with storage cartographer:custom_enchantments

execute on target run scoreboard players add @s ca.special_attack_delay 15

execute if entity @s[tag=ca.use_special_attack_cooldown] run scoreboard players set $item ca.special_attack_wait 0
execute if entity @s[tag=ca.use_special_attack_cooldown] store result score $item ca.special_attack_wait run data get entity @s equipment.mainhand.components.minecraft:custom_data.special_attack_cooldown
execute if entity @s[tag=ca.use_special_attack_cooldown] run scoreboard players operation $item ca.special_attack_wait *= $4 ca.CONSTANT
execute if entity @s[tag=ca.use_special_attack_cooldown] run scoreboard players operation @s ca.special_attack_wait = $item ca.special_attack_wait
execute if entity @s[tag=ca.use_special_attack_cooldown] unless score $item ca.special_attack_wait matches 1.. run scoreboard players set @s ca.special_attack_wait 24