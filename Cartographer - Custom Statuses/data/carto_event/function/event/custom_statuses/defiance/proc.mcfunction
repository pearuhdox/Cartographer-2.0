scoreboard players operation @s ca.resistor_queue = $health ca.defiance_var

scoreboard players remove @s ca.resistor_queue 100

$scoreboard players set @s ca.heal $(health_floor)
scoreboard players remove @s ca.heal 10

scoreboard players operation $test ca.defiance_var = @s ca.resistor_queue

function cartographer_core:handlers/resistor/damage_player/start
scoreboard players set @s ca.resistor_queue 0

execute if entity @s[type=player] run function cartographer_core:helper/heal_player/apply_heal

tag @s add ca.defiance_proc

particle minecraft:totem_of_undying ~ ~1 ~ 0.15 0.15 0.15 0.25 30

execute if entity @s[type=player] run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.5 2

scoreboard players set @s ca.defiance_bailout 0

$function carto_event:api/create_single_entity_event {event:"custom_statuses/defiance/immunity",duration:$(immunity_time),delay:1,parameters:{bailout:$(bailout)},merge_behavior:"merge"}