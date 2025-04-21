summon sheep ~ ~ ~ {CustomNameVisible:0b,Health:1024f,Age:-32767,Color:0b,Tags:["ca.morph_sheep","ca.new_morph_sheep","ca.block_morphed"],Passengers:[{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["ca.morph_name_hide"]}],CustomName:'{"text":"jeb_"}',equipment:{mainhand:{id:"minecraft:white_wool",count:1},offhand:{id:"minecraft:white_wool",count:1},feet:{id:"minecraft:white_wool",count:1},legs:{id:"minecraft:white_wool",count:1},chest:{id:"minecraft:white_wool",count:1},head:{id:"minecraft:white_wool",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:max_health",base:1024},{id:"minecraft:scale",base:1.35}]}

data modify storage cartographer_custom_statuses:morphed equipment set value {}

data modify storage cartographer_custom_statuses:morphed equipment.items set from entity @s equipment

execute as @e[type=sheep,tag=ca.new_morph_sheep,limit=1,sort=nearest] at @s run function carto_event:event/custom_statuses/morphed/sheep_branch with storage cartographer_custom_statuses:morphed data