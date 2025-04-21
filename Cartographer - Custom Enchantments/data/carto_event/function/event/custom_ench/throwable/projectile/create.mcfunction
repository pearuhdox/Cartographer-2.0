data modify storage cartographer:custom_enchantments item set value {}
$execute as $(target) if entity @s[type=player] at @s if predicate cartographer_custom_enchantments:has/throwable/offhand unless predicate cartographer_custom_enchantments:has/throwable/mainhand run data modify storage cartographer:custom_enchantments item set from entity @s equipment.offhand
$execute as $(target) if entity @s[type=player] at @s if predicate cartographer_custom_enchantments:has/throwable/mainhand run data modify storage cartographer:custom_enchantments item set from entity @s SelectedItem

$execute as $(target) unless entity @s[type=player] at @s run data modify storage cartographer:custom_enchantments item set from entity @s equipment.mainhand

data modify entity @s item set from storage cartographer:custom_enchantments item

data modify entity @s item.components.minecraft:item_model set from storage cartographer:custom_enchantments item.components.minecraft:custom_data.throwable_item_model

data modify entity @s {} merge value {transformation:[0.0001f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0001f,0.0000f,0.0000f,0.0001f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

tp @s ~ ~ ~ ~ ~

execute store result score $x_start ca.ench_throwable_lvl run data get entity @s Pos[0] 1000
execute store result score $y_start ca.ench_throwable_lvl run data get entity @s Pos[1] 1000
execute store result score $z_start ca.ench_throwable_lvl run data get entity @s Pos[2] 1000

$tp @s ^ ^ ^$(motion_scale)

execute store result score $x_step ca.ench_throwable_lvl run data get entity @s Pos[0] 1000
execute store result score $y_step ca.ench_throwable_lvl run data get entity @s Pos[1] 1000
execute store result score $z_step ca.ench_throwable_lvl run data get entity @s Pos[2] 1000

scoreboard players operation $x_step ca.ench_throwable_lvl -= $x_start ca.ench_throwable_lvl
scoreboard players operation $y_step ca.ench_throwable_lvl -= $y_start ca.ench_throwable_lvl
scoreboard players operation $z_step ca.ench_throwable_lvl -= $z_start ca.ench_throwable_lvl

execute store result storage cartographer:custom_enchantments x_motion double 0.001 run scoreboard players get $x_step ca.ench_throwable_lvl
execute store result storage cartographer:custom_enchantments y_motion double 0.001 run scoreboard players get $y_step ca.ench_throwable_lvl
execute store result storage cartographer:custom_enchantments z_motion double 0.001 run scoreboard players get $z_step ca.ench_throwable_lvl

$tp @s ^ ^ ^$(step_scale)

execute store result score $x_step ca.ench_throwable_lvl run data get entity @s Pos[0] 1000
execute store result score $y_step ca.ench_throwable_lvl run data get entity @s Pos[1] 1000
execute store result score $z_step ca.ench_throwable_lvl run data get entity @s Pos[2] 1000

scoreboard players operation $x_step ca.ench_throwable_lvl -= $x_start ca.ench_throwable_lvl
scoreboard players operation $y_step ca.ench_throwable_lvl -= $y_start ca.ench_throwable_lvl
scoreboard players operation $z_step ca.ench_throwable_lvl -= $z_start ca.ench_throwable_lvl

execute store result storage cartographer:custom_enchantments x_step double 0.001 run scoreboard players get $x_step ca.ench_throwable_lvl
execute store result storage cartographer:custom_enchantments y_step double 0.001 run scoreboard players get $y_step ca.ench_throwable_lvl
execute store result storage cartographer:custom_enchantments z_step double 0.001 run scoreboard players get $z_step ca.ench_throwable_lvl

tp @s ~ ~ ~ ~ ~

execute if score $is_player ca.ench_throwable_lvl matches 1.. run tag @s add ca.player_owned

function carto_event:event/custom_ench/throwable/projectile/get_enchants
function carto_event:event/custom_ench/throwable/projectile/get_enchants_passives with storage carto_event current[-1].parameters
function carto_event:event/custom_ench/throwable/projectile/get_attributes with storage carto_event current[-1].parameters

$execute if score @s ca.ench_collapse_lvl matches 1.. run scoreboard players set $(target) ca.collapse_break_speed 0
$execute if score @s ca.ench_collapse_lvl matches 1.. as $(target) at @s run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/collapse/get_mining_speed
$execute if score @s ca.ench_collapse_lvl matches 1.. run scoreboard players operation @s ca.collapse_break_speed = $(target) ca.collapse_break_speed

function carto_event:event/custom_ench/throwable/projectile/create_macro with storage cartographer:custom_enchantments

$execute as $(target) at @s if score @s ca.ench_recoil_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/activate_projectile