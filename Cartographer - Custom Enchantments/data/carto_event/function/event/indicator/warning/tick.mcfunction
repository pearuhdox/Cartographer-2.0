$execute if score duration= carto_event matches 2.. as $(target) at @s unless entity @s[tag=ca.indicator_warning] run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
$execute if score duration= carto_event matches 2.. as $(target) at @s run tag @s add ca.indicator_warning

$execute if score duration= carto_event matches 1.. as $(target) at @s run title @s times 0t 2t 0t
$execute if score duration= carto_event matches 1.. as $(target) at @s run title @s title " "
$execute if score duration= carto_event matches 1.. as $(target) at @s run title @s subtitle {"bold":false,"color":"red","italic":false,"text":"⚠"}


$execute if score duration= carto_event matches 1 as $(target) at @s run tag @s remove ca.indicator_warning

return 1