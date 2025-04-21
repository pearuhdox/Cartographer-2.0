execute unless score $ripper ca.ench_value matches 1.. run scoreboard players add @s ca.stuck_count 1

scoreboard players operation @s ca.barbed_lvl > $barbed ca.ench_value

execute store result score @s ca.barbed_x run data get entity @s Pos[0] 100
execute store result score @s ca.barbed_y run data get entity @s Pos[1] 100
execute store result score @s ca.barbed_z run data get entity @s Pos[2] 100

data modify storage gu:main out set value "-"
execute on attacker run function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out

function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/barbed/macro with storage cartographer:custom_enchantments
tag @s add ca.barbed_tagged
function carto_event:api/create_single_entity_event {event:"stuck_handler",duration:600,delay:0,parameters:{duration:77},merge_behavior:"merge"}

