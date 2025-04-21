#tag @s remove ca.allow_damage
#scoreboard players set @s ca.raycast 0


execute store result score $piercing ca.ench_var run data get entity @s weapon.components."minecraft:enchantments".minecraft:piercing
execute store result score $pierce_ct ca.ench_var run data get entity @s PierceLevel
scoreboard players remove $pierce_ct ca.ench_var 1
execute store result entity @s PierceLevel byte 1 run scoreboard players get $pierce_ct ca.ench_var

execute if score $piercing ca.ench_var matches 0 run function cartographer_custom_enchantments:system/projectile_bypass/disable_arrow
execute if score $piercing ca.ench_var matches 1.. if score $pierce_ct ca.ench_var matches 0 run function cartographer_custom_enchantments:system/projectile_bypass/disable_arrow

execute if score $piercing ca.ench_var matches 1.. unless score $pierce_ct ca.ench_var matches 0 run tag @s add ca.update_position_projectile