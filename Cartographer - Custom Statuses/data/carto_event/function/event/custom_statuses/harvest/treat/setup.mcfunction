data modify entity @s Glowing set value 1b
data modify entity @s PickupDelay set value 32767
data modify entity @s Health set value 100

scoreboard players set $time ca.harvest_var 6000
$scoreboard players remove $time ca.harvest_var $(time)
execute store result entity @s Age short 1 run scoreboard players get $time ca.harvest_var

data modify entity @s Item.components.minecraft:custom_data set value {new_harvest_treat:0,harvest_treat:1b}

$data modify entity @s Item.id set value "$(visual)"

$function carto_event:api/create_single_entity_event {event:"custom_statuses/harvest/treat",duration:$(time),delay:2,parameters:{heal_amount:$(heal_amount),sat_amount:$(sat_amount),abs_amount:$(abs_amount),abs_seconds:$(abs_seconds),abs_cap:$(abs_cap),treat_range:$(treat_range),treat_targets:$(treat_targets),tick_command:"$(treat_command_tick)",proc_command:"$(treat_command_proc)",origin:"$(target)"},merge_behavior:"none"}

tag @s add ca.harvest_treat_setup