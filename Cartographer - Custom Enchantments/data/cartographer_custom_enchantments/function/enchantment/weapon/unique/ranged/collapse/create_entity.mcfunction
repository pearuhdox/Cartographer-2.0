data merge entity @s {glow_color_override:4665003,brightness:{sky:0,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,-0.05f,0.0f],scale:[1.05f,0.01f,1.05f]},item:{id:"minecraft:tinted_glass"}}

function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/collapse/custom_skin/directory

function cartographer_custom_enchantments:enchantment/helper/weapon/send_ench_values

$function carto_event:api/create_single_entity_event {event:"custom_ench/collapse",duration:1200,delay:0,parameters:{owner:"$(owner)",time:$(time),visual_time:$(visual_time)},merge_behavior:"none"}

scoreboard players add $count ca.entity_purge_var 1
tag @s add ca.purgable_entity