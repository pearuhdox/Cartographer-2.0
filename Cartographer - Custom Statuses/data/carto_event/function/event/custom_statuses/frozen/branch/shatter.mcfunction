execute unless score @s ca.frozen_ai matches 1.. run data modify entity @s NoAI set value 0b
execute store result entity @s Fuse int 1 run scoreboard players get @s ca.frozen_fuse

scoreboard players set @s ca.frozen_ai 0

execute on passengers if entity @s[type=block_display,tag=ca.status_frozen_display] run function carto_event:event/custom_statuses/frozen/release

tag @s remove ca.block_morphed
tag @s remove ca.block_confused
tag @s remove ca.has_custom_status_frozen