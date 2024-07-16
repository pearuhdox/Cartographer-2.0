$execute if score duration= carto_event matches 1 as $(target) at @s run function carto_event:event/custom_statuses/shocked/proc/activate with storage carto_event current[-1].parameters

$execute as $(target) at @s run tag @s remove ca.has_custom_status_shocked_proc
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_shocked_proc

return 1