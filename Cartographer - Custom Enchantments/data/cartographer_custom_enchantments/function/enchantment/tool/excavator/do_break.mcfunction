#Scan up to a max of 20 like blocks
scoreboard players set $stock ca.ench_excavator_lvl 20

execute align xyz positioned ~-3 ~-3 ~-3 run function cartographer_custom_enchantments:enchantment/tool/excavator/locate/layer with storage ltos:main data

tag @s add ca.excavator_user

execute if score $collapse ca.ench_excavator_lvl matches 1.. as @e[type=marker,tag=ca.excavator_found_block,limit=20,sort=nearest] at @s as @n[tag=ca.excavator_user] run function cartographer_custom_enchantments:enchantment/tool/excavator/break_collapse with storage ltos:main data
execute unless score $collapse ca.ench_excavator_lvl matches 1.. as @e[type=marker,tag=ca.excavator_found_block,limit=20,sort=nearest] at @s as @n[tag=ca.excavator_user] run function cartographer_custom_enchantments:enchantment/tool/excavator/break with storage ltos:main data

kill @e[type=marker,tag=ca.excavator_found_block,limit=20,sort=nearest]

tag @s remove ca.excavator_user

scoreboard players set @s ca.excavator_cooldown 3
function carto_event:api/create_single_entity_event {event:"custom_ench/excavator",duration:3,delay:0,parameters:{},merge_behavior:"none"}