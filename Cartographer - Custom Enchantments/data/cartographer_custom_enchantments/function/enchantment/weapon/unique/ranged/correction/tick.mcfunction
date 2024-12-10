scoreboard players set $type ca.ench_correction_lvl 0
execute on origin if entity @s[type=player] run scoreboard players set $type ca.ench_correction_lvl 1
execute on origin unless entity @s[type=player] run scoreboard players set $type ca.ench_correction_lvl 2

execute if score $type ca.ench_correction_lvl matches 1 if entity @e[type=#cartographer_core:affected_by_carto,distance=..7] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/correction/attempt
execute if score $type ca.ench_correction_lvl matches 2 if entity @a[distance=..7] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/correction/attempt


execute unless entity @s[tag=ca.corrected] if entity @s[nbt={inGround:1b}] run tag @s add ca.corrected