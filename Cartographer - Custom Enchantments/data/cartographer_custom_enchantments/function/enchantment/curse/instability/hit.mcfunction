execute if entity @s[type=player] if score @s ca.instability_type matches 2 run playsound minecraft:entity.arrow.hit player @s ~ ~ ~ 0.65 1.2

execute if entity @s[type=player] if score @s ca.instability_type matches 3 run playsound minecraft:entity.player.hurt_on_fire player @s ~ ~ ~ 2 1.25
execute if entity @s[type=player] if score @s ca.instability_type matches 3 run playsound minecraft:entity.player.hurt_freeze player @s ~ ~ ~ 2 0.8
execute if entity @s[type=player] if score @s ca.instability_type matches 3 run stopsound @s * minecraft:entity.player.hurt

execute if entity @s[type=player] if score @s ca.instability_type matches 4 run playsound minecraft:entity.player.big_fall player @s ~ ~ ~ 0.65 0.8

function carto_event:api/create_single_entity_event {event:"custom_ench/instability",duration:1,delay:5,parameters:{},merge_behavior:"none"}