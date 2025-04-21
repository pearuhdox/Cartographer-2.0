scoreboard players operation @s ca.resistor_queue = $health ca.defiance_var

scoreboard players remove @s ca.resistor_queue 100

$scoreboard players set @s ca.heal $(health_floor)
scoreboard players remove @s ca.heal 10

scoreboard players operation $test ca.defiance_var = @s ca.resistor_queue

data modify entity @s Health set value 1.0f
attribute @s minecraft:max_health modifier remove ca.defiance_health_max

execute unless entity @s[type=player] run scoreboard players operation @s ca.heal /= $10 ca.CONSTANT
execute unless entity @s[type=player] run scoreboard players operation @s bbl.heal_queue = @s ca.heal
execute unless entity @s[type=player] run function bb:call/hpm/mob/heal

tag @s add ca.defiance_proc

particle minecraft:totem_of_undying ~ ~1 ~ 0.15 0.15 0.15 0.25 30

execute unless entity @s[type=player] run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 0.75 2

$function carto_event:api/create_single_entity_event {event:"custom_statuses/defiance/immunity",duration:$(immunity_time),delay:1,parameters:{bailout:$(bailout)},merge_behavior:"merge"}