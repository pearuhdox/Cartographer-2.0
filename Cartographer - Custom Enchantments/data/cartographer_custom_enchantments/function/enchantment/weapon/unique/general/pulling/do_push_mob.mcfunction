tag @s add co_rotation_lock

scoreboard players operation @s co_send = $force ca.ench_var
#scoreboard players operation @s co_send *= $-1 ca.CONSTANT
scoreboard players set @s co_y 4

execute on attacker run tag @s add ca.mob_target

execute as @s at @s facing entity @p[tag=ca.mob_target] feet rotated ~ ~ run tp @s ~ ~ ~ ~ ~
execute as @s at @s run tp @s @s
execute as @s at @s run function motion:motion/push

execute on attacker run tag @s remove ca.mob_target

function carto_event:api/create_single_entity_event {event:"custom_statuses/vanilla_attribute",duration:30,delay:1,parameters:{type:"minecraft:attack_damage",tag:"ca.pull_block_melee",id:"pull_block_melee",value:-1,operation:"add_multiplied_total",tick_command:""},merge_behavior:"none"}

# Can look into this at a later date
#execute if entity @s[type=creeper] unless entity @s[tag=ca.pulling_delay_fuse] run function carto_event:api/create_single_entity_event {event:"custom_ench/pulling/creeper",duration:61,delay:1,parameters:{},merge_behavior:"none"}
