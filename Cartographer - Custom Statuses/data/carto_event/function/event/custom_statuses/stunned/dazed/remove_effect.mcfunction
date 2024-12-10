attribute @s minecraft:movement_speed modifier remove ca.dazed_speed
attribute @s minecraft:attack_damage modifier remove ca.dazed_damage

scoreboard players set $stunned_remove ca.stunned_var 1

tag @s remove ca.has_custom_status_dazed
scoreboard players set @s ca.stunned_daze_time 0