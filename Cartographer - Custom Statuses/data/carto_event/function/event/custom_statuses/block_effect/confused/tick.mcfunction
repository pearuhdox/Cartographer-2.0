$execute as $(target) at @s run tag @s remove ca.block_confusion
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.block_confusion

return 1