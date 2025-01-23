execute store result score $fall ca.gravity_var run data get entity @s FallDistance 10

execute if score $fall ca.gravity_var matches 15.. run function carto_event:api/create_single_entity_event {event:"custom_ench/gravity/entity",duration:15,delay:000,parameters:{},merge_behavior:"merge"}