$execute as $(target) at @s run tag @s remove ca.has_custom_enchant_event
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_enchant_event


$execute as $(target) at @s unless entity @s[tag=$(tag)] unless items entity @s armor.body * run function cartographer_core:handlers/body_armor_handler/add_default
$execute as $(target) at @s unless entity @s[tag=$(tag)] run function carto_event:event/custom_statuses/custom_enchant/add_enchant with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 1 run function carto_event:event/custom_statuses/custom_enchant/remove_enchant with storage carto_event current[-1].parameters


$execute as $(target) at @s run tag @s remove $(tag)
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add $(tag)

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

return 1