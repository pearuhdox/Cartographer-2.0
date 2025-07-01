data modify storage cartographer:mob_utils item set value {}
data modify storage cartographer:mob_utils item set from entity @s item

execute on passengers if entity @s[tag=ca.drop_splash_potion] run scoreboard players set @s ca.stack_delay 2
execute if entity @s[tag=ca.drop_splash_potion] summon splash_potion run function cartographer_mob_utils:stacking/display/drop/splash_potion
execute if entity @s[tag=ca.drop_lingering_potion] summon lingering_potion run function cartographer_mob_utils:stacking/display/drop/lingering_potion
execute if entity @s[tag=ca.drop_ominous_item] summon ominous_item_spawner run function cartographer_mob_utils:stacking/display/drop/ominous_item_spawner/loc

function carto_event:api/create_single_entity_event {event:"mob_utils/stacking/despawn",duration:1,delay:0,parameters:{},merge_behavior:"none"}