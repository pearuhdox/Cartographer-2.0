execute store result score $max ca.tenacity_hp run attribute @s max_health get 10
scoreboard players operation $max ca.tenacity_hp /= $10 ca.CONSTANT

execute unless score @s ca.tenacity_hp matches 1.. run scoreboard players set @s ca.tenacity_hp 0
execute unless score @s ca.tenacity_hp_past matches 1.. run scoreboard players set @s ca.tenacity_hp_past 0

scoreboard players operation @s ca.tenacity_hp_past = @s ca.tenacity_hp
execute store result score @s ca.tenacity_hp run data get entity @s Health 10

execute if score @s ca.tenacity_hp_past matches 1.. run scoreboard players operation $val ca.tenacity_hp = @s ca.tenacity_hp
execute if score @s ca.tenacity_hp_past matches 1.. run scoreboard players operation $val ca.tenacity_hp -= @s ca.tenacity_hp_past

execute if score $val ca.tenacity_hp matches 1.. run scoreboard players operation @s ca.tenacity_buffer += $val ca.tenacity_hp

execute if score @s ca.tenacity_buffer >= $max ca.tenacity_hp run function cartographer_custom_enchantments:enchantment/passive/tenacity/add_stack