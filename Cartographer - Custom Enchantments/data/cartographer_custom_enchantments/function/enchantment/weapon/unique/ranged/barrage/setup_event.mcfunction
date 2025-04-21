scoreboard players operation $barrage_ct ca.ench_barrage_lvl = @s ca.ench_barrage_lvl
scoreboard players operation $barrage_time_mult ca.ench_barrage_lvl = @s ca.ench_barrage_lvl
scoreboard players add $barrage_time_mult ca.ench_barrage_lvl 1

execute on origin if entity @s[type=player] run scoreboard players set $barrage_time ca.ench_barrage_lvl 6
execute on origin unless entity @s[type=player] run scoreboard players set $barrage_time ca.ench_barrage_lvl 12
scoreboard players operation $barrage_time ca.ench_barrage_lvl -= $barrage_time_mult ca.ench_barrage_lvl
execute on origin if entity @s[type=player] if score $barrage_time ca.ench_barrage_lvl matches ..0 run scoreboard players set $barrage_time ca.ench_barrage_lvl 1
execute on origin unless entity @s[type=player] if score $barrage_time ca.ench_barrage_lvl matches ..1 run scoreboard players set $barrage_time ca.ench_barrage_lvl 2

execute store result storage cartographer:custom_enchantments barrage_mod int 1 run scoreboard players get $barrage_time ca.ench_barrage_lvl

scoreboard players operation $barrage_time ca.ench_barrage_lvl *= $barrage_ct ca.ench_barrage_lvl

execute store result storage cartographer:custom_enchantments barrage_ct int 1 run scoreboard players get $barrage_ct ca.ench_barrage_lvl
execute store result storage cartographer:custom_enchantments barrage_time int 1 run scoreboard players get $barrage_time ca.ench_barrage_lvl

execute if entity @s[type=arrow] run data modify storage cartographer:custom_enchantments projectile_type set value "minecraft:arrow"
execute if entity @s[type=spectral_arrow] run data modify storage cartographer:custom_enchantments projectile_type set value "minecraft:spectral_arrow"
execute if entity @s[type=snowball] run data modify storage cartographer:custom_enchantments projectile_type set value "minecraft:snowball"
execute if entity @s[type=splash_potion] run data modify storage cartographer:custom_enchantments projectile_type set value "minecraft:splash_potion"
execute if entity @s[type=lingering_potion] run data modify storage cartographer:custom_enchantments projectile_type set value "minecraft:lingering_potion"
execute if entity @s[type=trident] run data modify storage cartographer:custom_enchantments projectile_type set value "minecraft:trident"
execute if entity @s[type=experience_bottle] run data modify storage cartographer:custom_enchantments projectile_type set value "minecraft:experience_bottle"
execute if entity @s[type=small_fireball] run data modify storage cartographer:custom_enchantments projectile_type set value "minecraft:small_fireball"
execute if entity @s[type=fireball] run data modify storage cartographer:custom_enchantments projectile_type set value "minecraft:fireball"
execute if entity @s[type=wind_charge] run data modify storage cartographer:custom_enchantments projectile_type set value "minecraft:wind_charge"

data modify storage gu:main out set value "-"
execute on origin run function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out

function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/barrage/save_scores
execute on origin run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/barrage/setup_macro with storage cartographer:custom_enchantments

tag @s add ca.needs_checker
execute if score $arrow_owner_type ca.ench_var matches 1.. run tag @s add ca.allow_damage_bypass