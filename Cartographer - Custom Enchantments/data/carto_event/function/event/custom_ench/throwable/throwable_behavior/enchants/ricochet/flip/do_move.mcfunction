playsound minecraft:entity.arrow.hit player @a[distance=..24] ~ ~ ~ 0.5 1.75
playsound minecraft:entity.slime.squish_small player @a[distance=..24] ~ ~ ~ 0.5 0.75

execute if score $side_reflect ca.ench_ricochet_lvl matches 1 run particle minecraft:item_slime ~ ~ ~ 0 0.3 0.3 0 15 normal
execute if score $side_reflect ca.ench_ricochet_lvl matches 2 run particle minecraft:item_slime ~ ~ ~ 0.3 0 0.3 0 15 normal
execute if score $side_reflect ca.ench_ricochet_lvl matches 3 run particle minecraft:item_slime ~ ~ ~ 0.3 0.3 0 0 15 normal

#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force

tag @s add ca.did_ricochet

tp @s ~ ~ ~ ~ ~

#Calculate New Motion Values here for particle work
#execute store result score $x_mot ca.ench_ricochet_lvl run data get storage carto_event current[-1].parameters.x_step 1000
#execute store result score $y_mot ca.ench_ricochet_lvl run data get storage carto_event current[-1].parameters.y_step 1000
#execute store result score $z_mot ca.ench_ricochet_lvl run data get storage carto_event current[-1].parameters.z_step 1000

#execute store result storage carto_event current[-1].parameters.x_step double 0.0001 run scoreboard players get $x_mot ca.ench_ricochet_lvl
#execute store result storage carto_event current[-1].parameters.y_step double 0.0001 run scoreboard players get $y_mot ca.ench_ricochet_lvl
#execute store result storage carto_event current[-1].parameters.z_step double 0.0001 run scoreboard players get $z_mot ca.ench_ricochet_lvl

#scoreboard players set @s ca.raycast 7
#function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/flip/vfx with storage cartographer_custom_enchantments:ricochet
#scoreboard players set @s ca.raycast 0

#execute if score @s ca.ench_ricochet_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/flip/do_new_check