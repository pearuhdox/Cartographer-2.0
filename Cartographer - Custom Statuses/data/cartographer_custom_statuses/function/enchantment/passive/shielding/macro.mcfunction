execute if entity @s[tag=ca.shielding_restart] run function cartographer_custom_statuses:enchantment/passive/shielding/restart

$function carto_event:api/create_single_entity_event {event:"custom_statuses/absorption/enchantment",duration:2,delay:0,parameters:{tick_count:0,seconds:45,tick_rate:$(time),amount:1,cap:$(cap),tick_command:"",run_command:""},merge_behavior:"custom"}