$execute as $(target) at @s unless entity @s[tag=ca.popup_tp] run tp @s $(teleport_position)
$execute as $(target) at @s unless entity @s[tag=ca.popup_tp] run tag @s remove ca.new_popup
$execute as $(target) at @s unless entity @s[tag=ca.popup_tp] run tag @s add ca.popup_tp

$execute as $(target) at @s unless entity @s[tag=ca.popup_tp] run scoreboard players set @s ca.entity_purge_var 0

$execute if score duration= carto_event matches 1 as $(target) at @s run scoreboard players remove $count ca.entity_purge_var 1
$execute if score duration= carto_event matches 1 as $(target) at @s run kill @s



$execute as $(target) run return 1