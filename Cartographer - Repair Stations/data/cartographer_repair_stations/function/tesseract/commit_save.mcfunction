data modify storage cartographer_repair_stations:tesseract Data.Equipped set value [{},{},{},{},{},{}]

data modify storage cartographer_repair_stations:tesseract Data.Equipped[0] set from entity @s SelectedItem
data modify storage cartographer_repair_stations:tesseract Data.Equipped[1] set from entity @s equipment.offhand
data modify storage cartographer_repair_stations:tesseract Data.Equipped[2] set from entity @s equipment.feet
data modify storage cartographer_repair_stations:tesseract Data.Equipped[3] set from entity @s equipment.legs
data modify storage cartographer_repair_stations:tesseract Data.Equipped[4] set from entity @s equipment.chest
data modify storage cartographer_repair_stations:tesseract Data.Equipped[5] set from entity @s equipment.head

tag @s add ca.check_tesseract