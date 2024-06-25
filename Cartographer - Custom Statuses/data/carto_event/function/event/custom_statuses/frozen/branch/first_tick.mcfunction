playsound minecraft:entity.zombie.destroy_egg hostile @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.zombie.destroy_egg hostile @a[distance=..16] ~ ~ ~ 1 0.6
playsound minecraft:entity.zombie.destroy_egg hostile @a[distance=..16] ~ ~ ~ 1 0.7
playsound minecraft:entity.zombie.destroy_egg hostile @a[distance=..16] ~ ~ ~ 1 0.8

particle snowflake ~ ~0.5 ~ 0.2 0.2 0.2 0.02 20 normal
particle snowflake ~ ~1 ~ 0.2 0.2 0.2 0.02 20 normal
particle snowflake ~ ~1.5 ~ 0.2 0.2 0.2 0.02 20 normal

execute store result score @s ca.frozen_ai run data get entity @s NoAI
execute unless score @s ca.frozen_ai matches 1.. run data modify entity @s NoAI set value 1b

execute store result score @s ca.frozen_fuse run data get entity @s Fuse
execute if score @s ca.frozen_fuse matches 1.. run data modify entity @s Fuse set value 32767


summon block_display ~ ~ ~ {Tags:["ca.registered","ca.status_frozen_display","ca.new"],block_state:{Name:"minecraft:ice"}}
ride @e[tag=ca.status_frozen_display,tag=ca.new,limit=1,sort=nearest] mount @s
function carto_event:event/custom_statuses/frozen/display

scoreboard players reset @s ca.frozen_hp_past
scoreboard players reset @s ca.frozen_hp