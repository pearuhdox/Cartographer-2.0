$execute as @e[type=#bb:hostile,tag=!ca.has_custom_status_shackled,distance=0.25..$(range),sort=nearest,limit=$(spread)] at @s run function carto_event:api/create_single_entity_event {event:"custom_statuses/shackled",duration:200,delay:005,parameters:{tick_command:"$(tick_command)",percentage:$(percentage),range:$(range),targets:$(targets),spread:0,spread_duration:0,owner:"@p"},merge_behavior:"custom"}

scoreboard players set @s ca.shackled_spread 0

playsound minecraft:block.chain.break hostile @a[distance=..16] ~ ~ ~ 2 0.5
playsound minecraft:block.sculk_sensor.clicking hostile @a[distance=..16] ~ ~ ~ 1.5 1.25

particle dust{color:[0.141,0.620,0.494],scale:3} ~ ~1 ~ 0.75 0.3 0.75 1 15 normal