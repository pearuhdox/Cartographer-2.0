scoreboard players set $tesseract_del ca.tesseract 0

function cartographer_repair_stations:tesseract/delete

execute unless score $tesseract_del ca.tesseract matches 1.. run function cartographer_repair_stations:tesseract/create

kill @s