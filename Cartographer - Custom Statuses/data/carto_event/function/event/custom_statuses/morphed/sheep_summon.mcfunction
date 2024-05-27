summon sheep ~ ~ ~ {CustomNameVisible:0b,Health:1024f,Age:-32767,Color:0b,Tags:["ca.morph_sheep","ca.new_morph_sheep","ca.block_morphed"],Passengers:[{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["ca.morph_name_hide"]}],CustomName:'{"text":"jeb_"}',HandItems:[{id:"minecraft:white_wool",count:1},{id:"minecraft:white_wool",count:1}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{id:"minecraft:white_wool",count:1},{id:"minecraft:white_wool",count:1},{id:"minecraft:white_wool",count:1},{id:"minecraft:white_wool",count:1}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],attributes:[{id:"minecraft:generic.max_health",base:1024},{id:"minecraft:generic.scale",base:1.35}]}

data modify storage cartographer_custom_statuses:morphed equipment set value {}

data modify storage cartographer_custom_statuses:morphed equipment.armor set from entity @s ArmorItems
data modify storage cartographer_custom_statuses:morphed equipment.weapon set from entity @s HandItems

execute as @e[type=sheep,tag=ca.new_morph_sheep,limit=1,sort=nearest] at @s run function carto_event:event/custom_statuses/morphed/sheep_branch with storage cartographer_custom_statuses:morphed data