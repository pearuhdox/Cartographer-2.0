data merge entity @s {Tags:["ca.quick_drop_box_animation","ca.new","ca.registered"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},item:{id:"minecraft:shulker_box",count:1}}

data modify entity @s item set from storage cartographer_core:quick_drop shulker

scoreboard players operation @s ca.drop_box = $color ca.drop_box

scoreboard players set @s ca.quick_drop_anim 1

function carto_event:api/create_single_entity_event {event:"sb_quick_drop",duration:6,delay:0,parameters:{},merge_behavior:"none"}
