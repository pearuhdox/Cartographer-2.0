$damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)

$scoreboard players add @s ca.oiled_buffer $(damage)
execute if score @s ca.oiled_buffer matches 2.. anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:0.85,text:"-❤",color:"#ec8c2c",buffer_name:"oiled"}


playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 1 0.5

execute positioned ~ ~1 ~ run particle minecraft:lava ~ ~ ~ 0.2 0.4 0.2 0.2 12 normal
execute positioned ~ ~1 ~ run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.2 0.4 0.2 0.1 6 normal
execute positioned ~ ~0.2 ~ run particle minecraft:trial_spawner_detection ~ ~ ~ 0.3 0.2 0.3 0.03 100 normal

data modify entity @s Fire set value -1s

scoreboard players set @s ca.oiled_warmup 0

tag @s remove ca.has_custom_status_ignited_oiled