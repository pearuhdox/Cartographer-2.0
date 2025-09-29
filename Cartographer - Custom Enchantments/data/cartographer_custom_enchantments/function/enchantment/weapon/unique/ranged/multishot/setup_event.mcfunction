scoreboard players operation $multishot_ct ca.ench_multishot_lvl = @s ca.ench_multishot_lvl

scoreboard players operation $multishot_rot ca.ench_multishot_lvl = @s ca.ench_multishot_lvl
scoreboard players operation $multishot_rot ca.ench_multishot_lvl *= $25 ca.CONSTANT

execute store result storage cartographer:custom_enchantments rotation double 0.01 run scoreboard players get $multishot_rot ca.ench_multishot_lvl

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
execute on origin run data modify storage cartographer:custom_enchantments uuid set from entity @s UUID

data modify storage cartographer:custom_enchantments motion set from entity @s Motion

data modify storage cartographer:custom_enchantments full_data set value {}
data modify storage cartographer:custom_enchantments full_data set from entity @s {}

data remove storage cartographer:custom_enchantments full_data.Tags
data remove storage cartographer:custom_enchantments full_data.Motion

execute store result score $x_mot ca.ench_multishot_lvl run data get storage cartographer:custom_enchantments motion[0] 100
execute store result score $z_mot ca.ench_multishot_lvl run data get storage cartographer:custom_enchantments motion[2] 100

scoreboard players operation $x_mot ca.ench_multishot_lvl *= $x_mot ca.ench_multishot_lvl
scoreboard players operation $z_mot ca.ench_multishot_lvl *= $z_mot ca.ench_multishot_lvl

scoreboard players set $total_mot ca.ench_multishot_lvl 0
scoreboard players operation $total_mot ca.ench_multishot_lvl += $x_mot ca.ench_multishot_lvl
scoreboard players operation $total_mot ca.ench_multishot_lvl += $z_mot ca.ench_multishot_lvl

scoreboard players operation $math.isqrt.x bs.in = $total_mot ca.ench_multishot_lvl
function #bs.math:isqrt
scoreboard players operation $total_mot ca.ench_multishot_lvl = $math.isqrt bs.out

execute store result score $multishot_yaw_save ca.ench_multishot_lvl run data get entity @s Rotation[0] 100

scoreboard players operation $multishot_yaw ca.ench_multishot_lvl = $multishot_yaw_save ca.ench_multishot_lvl
scoreboard players operation $multishot_ct ca.ench_multishot_lvl = @s ca.ench_multishot_lvl
execute on origin at @s anchored eyes rotated ~ ~ positioned ^ ^ ^ run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/multishot/create_left with storage cartographer:custom_enchantments
scoreboard players operation $multishot_ct ca.ench_multishot_lvl = @s ca.ench_multishot_lvl
scoreboard players operation $multishot_yaw ca.ench_multishot_lvl = $multishot_yaw_save ca.ench_multishot_lvl
execute on origin at @s anchored eyes rotated ~ ~ positioned ^ ^ ^ run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/multishot/create_right with storage cartographer:custom_enchantments


tag @s add ca.needs_checker
execute if score $arrow_owner_type ca.ench_var matches 1.. run tag @s add ca.allow_damage_bypass