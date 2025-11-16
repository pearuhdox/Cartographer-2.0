execute if entity @s[tag=ca.indicator_warning] if score @s ca.no_warning matches 1 run scoreboard players set @s ca.warning_time 0
execute if entity @s[tag=ca.indicator_warning] if score @s ca.no_warning matches 1 run tag @s remove ca.indicator_warning
execute if entity @s[tag=ca.indicator_warning] run function cartographer_custom_enchantments:indicator/warning/tick
execute if score @s ca.warning_sound_cdl matches 1.. run scoreboard players remove @s ca.warning_sound_cdl 1