attribute @s follow_range modifier remove ca.diversion_distract

$damage @s 0.001 cartographer_custom_enchantments:enchant_damage_bypass by $(target)

execute if entity @s[tag=ca.diversion_silent] run data modify entity @s Silent set value 0b
tag @s remove ca.diversion_silent
tag @s remove ca.diversion_distract

tag @s add co_rotation_lock
$rotate @s facing entity $(target) feet
scoreboard players set @s co_send -4
scoreboard players set @s co_y 2
execute as @s at @s run function motion:motion/push
tag @s remove co_rotation_lock
