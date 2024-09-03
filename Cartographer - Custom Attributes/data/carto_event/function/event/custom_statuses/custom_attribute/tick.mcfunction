$execute as $(target) at @s run tag @s remove ca.has_custom_attribute_event
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_attribute_event

$execute as $(target) at @s unless entity @s[tag=$(tag)] run function cartographer_custom_attributes:custom_attributes/modifier/apply {attribute:"$(type)",id:"$(id)",value:$(value),percent:$(percent)}
$execute as $(target) at @s if score duration= carto_event matches 1 run function cartographer_custom_attributes:custom_attributes/modifier/remove {attribute:"$(type)",id:"$(id)"}


$execute as $(target) at @s run tag @s remove $(tag)
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add $(tag)

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

return 1