$execute as $(target) at @s unless entity @s[tag=ca.popup_tp] run tp @s $(teleport_position)
$execute as $(target) at @s unless entity @s[tag=ca.popup_tp] run tag @s remove ca.new_popup
$execute as $(target) at @s unless entity @s[tag=ca.popup_tp] run tag @s add ca.popup_tp

$execute if score duration= carto_event matches 1 as $(target) at @s run kill @s

return 1