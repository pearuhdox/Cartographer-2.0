scoreboard players set $hit ca.ench_var 1
scoreboard players set $hit_tag ca.ench_var 1
damage @s 0.01 cartographer_custom_enchantments:projectile_damage_bypass by @n[tag=ca.arrow_owner]

execute if score $flame ca.ench_var matches 1.. store result score $fire_amt ca.ench_var run data get entity @s Fire
execute if score $flame ca.ench_var matches 1.. if score $fire_amt ca.ench_var matches ..99 run data modify entity @s Fire set value 100

tag @s add ca.bypass_hit