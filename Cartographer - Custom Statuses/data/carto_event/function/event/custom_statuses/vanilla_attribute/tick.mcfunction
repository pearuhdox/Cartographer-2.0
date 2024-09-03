$execute as $(target) at @s run tag @s remove ca.has_vanilla_attribute_event
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_vanilla_attribute_event

$execute as $(target) at @s run tag @s remove $(tag)
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add $(tag)

$execute as $(target) at @s run attribute @s $(type) modifier remove $(id)
$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s $(type) modifier add $(id) $(value) $(operation)

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

return 1