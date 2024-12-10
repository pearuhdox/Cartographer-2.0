data modify storage cartographer_custom_attributes:trident item set value {}
data modify storage cartographer_custom_attributes:trident entity set value {}
data modify storage cartographer_custom_attributes:trident entity set from entity @s
data modify storage cartographer_custom_attributes:trident item set from storage cartographer_custom_attributes:trident entity.item

data modify storage cartographer_custom_attributes:trident_uuid UUID set from storage cartographer_custom_attributes:trident entity.Owner

scoreboard players set $pickup ca.custom_trident 0
execute store result score $pickup ca.custom_trident run data get entity @s pickup

$summon snowball ~ ~ ~ {Motion:[$(motion_x),$(motion_y),$(motion_z)],Item:{id:"minecraft:warped_button",count:1},LeftOwner:1b,HasBeenShot:1b,Air:0b,Tags:["ca.custom_trident","ca.new_custom_trident"],Passengers:[{id:"minecraft:item_display",Tags:["ca.custom_trident_display"],Passengers:[{id:"minecraft:marker",Tags:["ca.custom_trident_marker"]}],item:{id:"minecraft:trident",Count:1s},interpolation_duration:0,start_interpolation:0,transformation:[0.000f, -0.000f, -1.000f,0.500f,1.000f, 0.000f, 0.000f,-0.500f,0.000f, -1.000f, 0.000f,-0.300f,0.000f, 0.000f, 0.000f,1.000f]}]}

data modify storage gu:main out set value "-"
function gu:convert with storage cartographer_custom_attributes:trident_uuid
data modify storage cartographer_custom_attributes:trident owner set from storage gu:main out

execute store result storage cartographer_custom_attributes:trident prev_x double 1 run data get entity @s Pos[0]
execute store result storage cartographer_custom_attributes:trident prev_y double 1 run data get entity @s Pos[1]
execute store result storage cartographer_custom_attributes:trident prev_z double 1 run data get entity @s Pos[2]

execute store result score $motion_x ca.custom_trident run data get storage cartographer_custom_attributes:trident motion_x 100
execute store result score $motion_y ca.custom_trident run data get storage cartographer_custom_attributes:trident motion_y 100
execute store result score $motion_z ca.custom_trident run data get storage cartographer_custom_attributes:trident motion_z 100

scoreboard players operation $motion_x ca.custom_trident *= $-1 ca.CONSTANT
scoreboard players operation $motion_y ca.custom_trident *= $-1 ca.CONSTANT
scoreboard players operation $motion_z ca.custom_trident *= $-1 ca.CONSTANT

execute store result storage cartographer_custom_attributes:trident motion_x double 0.01 run scoreboard players get $motion_x ca.custom_trident
execute store result storage cartographer_custom_attributes:trident motion_y double 0.01 run scoreboard players get $motion_y ca.custom_trident
execute store result storage cartographer_custom_attributes:trident motion_z double 0.01 run scoreboard players get $motion_z ca.custom_trident

scoreboard players operation $trident_val ca.attr_ranged_damage_value = @s ca.attr_ranged_damage_value
execute if score @s ca.attr_ranged_damage_percent matches 1.. run scoreboard players operation $trident_val ca.attr_ranged_damage_value *= @s ca.attr_ranged_damage_percent
execute if score @s ca.attr_ranged_damage_percent matches 1.. run scoreboard players operation $trident_val ca.attr_ranged_damage_value /= $100 ca.CONSTANT

scoreboard players set $dmg_bypass ca.custom_trident 0
execute if entity @s[tag=ca.allow_damage_bypass] run scoreboard players set $dmg_bypass ca.custom_trident 1

scoreboard players set $no_ench_calc ca.custom_trident 0
execute if entity @s[tag=ca.no_ench_calc] run scoreboard players set $no_ench_calc ca.custom_trident 1


execute as @e[type=snowball,limit=1,sort=nearest,tag=ca.custom_trident,tag=ca.new_custom_trident] run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/trident/convert_branch with storage cartographer_custom_attributes:trident


execute on origin if entity @s[type=player] run stopsound @a[distance=..16] * minecraft:item.trident.throw 
execute on origin if entity @s[type=player] run playsound minecraft:item.trident.throw player @a[distance=..16] ~ ~ ~ 1.2 1

kill @s