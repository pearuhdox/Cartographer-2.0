playsound minecraft:entity.arrow.hit player @a[distance=..24] ~ ~ ~ 0.5 1.75
playsound minecraft:entity.slime.squish_small player @a[distance=..24] ~ ~ ~ 0.5 0.75

execute if score $side_reflect ca.ench_ricochet_lvl matches 1 run particle minecraft:item_slime ~ ~ ~ 0 0.3 0.3 0 15 normal
execute if score $side_reflect ca.ench_ricochet_lvl matches 2 run particle minecraft:item_slime ~ ~ ~ 0.3 0 0.3 0 15 normal
execute if score $side_reflect ca.ench_ricochet_lvl matches 3 run particle minecraft:item_slime ~ ~ ~ 0.3 0.3 0 0 15 normal

tp @s ~ ~ ~

execute if entity @s[type=#cartographer_core:potions] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/flip/potion_splash

tag @s remove ca.allow_flip

tag @s add ca.update_motion
execute unless score @s ca.ench_ricochet_lvl matches 1.. run tag @s add ca.ricocheted


execute if entity @s[tag=ca.corrected] run function carto_event:api/create_single_entity_event {event:"custom_ench/correction",duration:1,delay:1,parameters:{},merge_behavior:"none"}


#Calculate New Motion Values here for particle work
execute store result score $x_mot ca.ench_ricochet_lvl run data get storage cartographer_custom_enchantments:ricochet Motion[0] 1000
execute store result score $y_mot ca.ench_ricochet_lvl run data get storage cartographer_custom_enchantments:ricochet Motion[1] 1000
execute store result score $z_mot ca.ench_ricochet_lvl run data get storage cartographer_custom_enchantments:ricochet Motion[2] 1000

scoreboard players operation $x_mot_invert ca.ench_ricochet_lvl = $x_mot ca.ench_ricochet_lvl
scoreboard players operation $y_mot_invert ca.ench_ricochet_lvl = $y_mot ca.ench_ricochet_lvl
scoreboard players operation $z_mot_invert ca.ench_ricochet_lvl = $z_mot ca.ench_ricochet_lvl

scoreboard players operation $x_mot_invert ca.ench_ricochet_lvl *= $-1 ca.CONSTANT
scoreboard players operation $y_mot_invert ca.ench_ricochet_lvl *= $-1 ca.CONSTANT
scoreboard players operation $z_mot_invert ca.ench_ricochet_lvl *= $-1 ca.CONSTANT

execute store result storage cartographer_custom_enchantments:ricochet x_step double 0.0001 run scoreboard players get $x_mot ca.ench_ricochet_lvl
execute store result storage cartographer_custom_enchantments:ricochet y_step double 0.0001 run scoreboard players get $y_mot ca.ench_ricochet_lvl
execute store result storage cartographer_custom_enchantments:ricochet z_step double 0.0001 run scoreboard players get $z_mot ca.ench_ricochet_lvl

execute store result storage cartographer_custom_enchantments:ricochet x_step_invert double 0.0001 run scoreboard players get $x_mot_invert ca.ench_ricochet_lvl
execute store result storage cartographer_custom_enchantments:ricochet y_step_invert double 0.0001 run scoreboard players get $y_mot_invert ca.ench_ricochet_lvl
execute store result storage cartographer_custom_enchantments:ricochet z_step_invert double 0.0001 run scoreboard players get $z_mot_invert ca.ench_ricochet_lvl

scoreboard players set @s ca.raycast 7
function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/flip/vfx with storage cartographer_custom_enchantments:ricochet
scoreboard players set @s ca.raycast 0

execute if score @s ca.ench_ricochet_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/flip/do_new_check