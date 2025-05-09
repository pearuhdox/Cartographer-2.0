$execute as $(target) at @s run scoreboard players set @s ca.entity_purge_var 0

$execute as $(target) at @s if score @s ca.collapse_time matches 2 run playsound minecraft:block.ender_chest.open player @a[distance=..16] ~ ~ ~ 0.3 1.25

$execute as $(target) at @s if score @s ca.collapse_time matches 2 if score @s ca.ench_drilling_lvl matches 1.. run scoreboard players operation $collapse ca.ench_drilling_lvl = @s ca.ench_drilling_lvl
$execute as $(target) at @s if score @s ca.collapse_time matches 2 if score $collapse ca.ench_drilling_lvl matches 1.. as $(owner) run function cartographer_custom_enchantments:enchantment/tool/drilling/hit_block_collapse
$execute as $(target) at @s if score @s ca.collapse_time matches 2 as $(owner) run scoreboard players set $collapse ca.ench_drilling_lvl 0

$execute as $(target) at @s if score @s ca.collapse_time matches 2 if score @s ca.ench_drilling_lvl matches 1.. run scoreboard players operation $eruption_hand ca.ench_value = @s ca.ench_eruption_main_lvl
$execute as $(target) at @s if score @s ca.collapse_time matches 2 if score $eruption ca.ench_value matches 1.. as $(owner) unless entity @s[tag=ca.eruption_used_spawner] if block ~ ~ ~ spawner run function cartographer_custom_enchantments:enchantment/passive/eruption/hit_spawner_collapse
$execute as $(target) at @s if score @s ca.collapse_time matches 2 run scoreboard players set $eruption_hand ca.ench_value 0

$execute as $(target) at @s if score @s ca.collapse_time matches 2 if score @s ca.ench_drilling_lvl matches 1.. run scoreboard players operation $soulfire_hand ca.ench_value = @s ca.ench_soulfire_main_lvl
$execute as $(target) at @s if score @s ca.collapse_time matches 2 if score $soulfire ca.ench_value matches 1.. as $(owner) unless entity @s[tag=ca.soulfire_used_spawner] if block ~ ~ ~ spawner run function cartographer_custom_enchantments:enchantment/passive/soulfire/hit_spawner_collapse
$execute as $(target) at @s if score @s ca.collapse_time matches 2 run scoreboard players set $soulfire_hand ca.ench_value 0


$execute as $(target) at @s run scoreboard players add @s ca.collapse_mod 1
$execute as $(target) at @s if score @s ca.collapse_mod matches 5.. run playsound minecraft:block.stone.hit player @a[distance=..16] ~ ~ ~ 0.35 0.75
$execute as $(target) at @s if score @s ca.collapse_mod matches 5.. run scoreboard players set @s ca.collapse_mod 0

$execute as $(target) at @s if score @s ca.collapse_time <= $particle_time ca.collapse_time run particle minecraft:portal ~ ~ ~ 0 0 0 1 3 normal
$execute as $(target) at @s unless score @s ca.collapse_time <= $particle_time ca.collapse_time run particle minecraft:witch ~ ~ ~ 0.35 0.35 0.35 0.2 1 normal

$execute as $(target) at @s unless entity @s[tag=ca.player_head_model] if score @s ca.collapse_time matches 2 run data merge entity @s {Glowing:1b,interpolation_duration:$(visual_time),start_interpolation:0,transformation:[1.0500f,0.0000f,0.0000f,0.0100f,0.0000f,1.0500f,0.0000f,-0.0100f,0.0000f,0.0000f,1.0500f,0.0100f,0.0000f,0.0000f,0.0000f,1.0000f]}
$execute as $(target) at @s if entity @s[tag=ca.player_head_model] if score @s ca.collapse_time matches 2 run data merge entity @s {Glowing:1b,interpolation_duration:$(visual_time),start_interpolation:0,transformation:[2.0500f,0.0000f,0.0000f,0.0100f,0.0000f,2.0500f,0.0000f,0.5100f,0.0000f,0.0000f,2.0500f,0.0100f,0.0000f,0.0000f,0.0000f,1.0000f]}
$execute as $(target) at @s if score @s ca.collapse_time matches 2 run tag @s add ca.do_anim

$execute as $(target) at @s if entity @s[tag=ca.revolving] if score @s ca.collapse_time matches 2.. run rotate @s ~5 ~

$execute as $(target) at @s run scoreboard players add @s ca.collapse_time 1


$execute as $(target) at @s run scoreboard players set $despawn ca.collapse_time $(time)
$execute as $(target) at @s run scoreboard players add $despawn ca.collapse_time 5

$execute as $(target) at @s run scoreboard players set $particle_time ca.collapse_time $(time)
$execute as $(target) at @s run scoreboard players remove $particle_time ca.collapse_time 35

$execute as $(target) at @s if score @s ca.collapse_time matches $(time) if block ~ ~ ~ spawner run function carto_event:event/custom_ench/collapse/run_spawner/get_data

$execute as $(target) at @s if score @s ca.collapse_time matches $(time) if score @s ca.ench_excavator_lvl matches 1.. run scoreboard players operation $collapse ca.ench_excavator_lvl = @s ca.ench_excavator_lvl


$execute as $(target) at @s if score @s ca.collapse_time matches $(time) run function carto_event:event/custom_ench/collapse/get_block
$execute as $(target) at @s if score @s ca.collapse_time matches $(time) run function carto_event:event/custom_ench/collapse/break_block with storage carto_event current[-1].parameters

$execute as $(target) at @s if score @s ca.collapse_time matches $(time) run data merge entity @s {Glowing:1b,glow_color_override:2641224,interpolation_duration:5,start_interpolation:0,transformation:[0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

$execute as $(target) at @s if score @s ca.collapse_time >= $despawn ca.collapse_time run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(target) at @s if score @s ca.collapse_time >= $despawn ca.collapse_time run kill @s

$execute as $(target) at @s unless score @s ca.collapse_time matches $(time).. if block ~ ~ ~ air run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(target) at @s unless score @s ca.collapse_time matches $(time).. if block ~ ~ ~ air run kill @s

$execute as $(target) at @s run return 1
return 0