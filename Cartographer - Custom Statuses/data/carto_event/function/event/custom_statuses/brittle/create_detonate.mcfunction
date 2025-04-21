$function carto_event:api/create_single_entity_event {event:"custom_statuses/brittle/detonate",duration:$(windup_time),delay:0,parameters:{damage:$(damage),range:$(range),targets:$(targets),owner:"$(owner)"},merge_behavior:"none"}

playsound minecraft:entity.elder_guardian.hurt hostile @a[distance=..16] ~ ~ ~ 1.25 2
playsound minecraft:entity.breeze.charge hostile @a[distance=..16] ~ ~ ~ 2 0.85

scoreboard players set @s ca.brittle_buildup 0
scoreboard players reset @s ca.brittle_hp