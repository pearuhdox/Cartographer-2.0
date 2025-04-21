scoreboard players operation $strength player_motion.api.launch = $force ca.ench_var

function player_motion:api/launch_looking

scoreboard players set @s ca.recoil_cooldown 10
function carto_event:api/create_single_entity_event {event:"custom_ench/recoil",duration:10,delay:0,parameters:{},merge_behavior:"none"}
