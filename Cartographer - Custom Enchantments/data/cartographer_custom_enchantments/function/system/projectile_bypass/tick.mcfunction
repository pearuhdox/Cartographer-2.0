execute store result score $x_mot ca.ench_var run data get entity @s Motion[0] 2000
execute store result score $y_mot ca.ench_var run data get entity @s Motion[1] 2000
execute store result score $z_mot ca.ench_var run data get entity @s Motion[2] 2000

execute store result storage cartographer:custom_enchantments x_step double 0.0001 run scoreboard players get $x_mot ca.ench_var
execute store result storage cartographer:custom_enchantments y_step double 0.0001 run scoreboard players get $y_mot ca.ench_var
execute store result storage cartographer:custom_enchantments z_step double 0.0001 run scoreboard players get $z_mot ca.ench_var


scoreboard players set @s ca.raycast 6
scoreboard players set $hit ca.ench_var 0
execute store result score $flame ca.ench_var run data get entity @s weapon.components."minecraft:enchantments".minecraft:flame
execute if entity @s[type=#bb:arrow] positioned ~ ~-0.5 ~ run function cartographer_custom_enchantments:system/projectile_bypass/raycast with storage cartographer:custom_enchantments
execute if entity @s[type=trident] positioned ~ ~-0.5 ~ run function cartographer_custom_enchantments:system/projectile_bypass/raycast with storage cartographer:custom_enchantments
execute if entity @s[type=!#bb:arrow,type=!trident,type=!#cartographer_core:potions] positioned ~ ~-0.2 ~ run function cartographer_custom_enchantments:system/projectile_bypass/raycast with storage cartographer:custom_enchantments
execute if score $hit ca.ench_var matches 1.. run tag @e[type=#cartographer_core:affected_by_carto,distance=..16] remove ca.bypass_hit

execute if entity @s[tag=ca.update_position_projectile] store result entity @s Motion[1] double 0.0005 run scoreboard players get $y_mot ca.ench_var
tag @s remove ca.update_position_projectile

execute if entity @s[nbt={inGround:1b}] run tag @s add ca.disabled_arrow