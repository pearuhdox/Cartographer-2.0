execute if data storage cartographer_repair_stations:tesseract Data.Equipped[0].id unless data storage cartographer_repair_stations:tesseract Data.Equipped[0].components.minecraft:custom_data.NoTesseract unless data entity @s SelectedItem.id run scoreboard players set $void_main ca.tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[1].id unless data storage cartographer_repair_stations:tesseract Data.Equipped[1].components.minecraft:custom_data.NoTesseract unless data entity @s equipment.offhand.id run scoreboard players set $void_off ca.tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[2].id unless data storage cartographer_repair_stations:tesseract Data.Equipped[2].components.minecraft:custom_data.NoTesseract unless data entity @s equipment.feet.id run scoreboard players set $void_head ca.tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[3].id unless data storage cartographer_repair_stations:tesseract Data.Equipped[3].components.minecraft:custom_data.NoTesseract unless data entity @s equipment.legs.id run scoreboard players set $void_body ca.tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[4].id unless data storage cartographer_repair_stations:tesseract Data.Equipped[4].components.minecraft:custom_data.NoTesseract unless data entity @s equipment.chest.id run scoreboard players set $void_legs ca.tesseract 1
execute if data storage cartographer_repair_stations:tesseract Data.Equipped[5].id unless data storage cartographer_repair_stations:tesseract Data.Equipped[5].components.minecraft:custom_data.NoTesseract unless data entity @s equipment.head.id run scoreboard players set $void_feet ca.tesseract 1

execute if score $void_main ca.tesseract matches 1.. store result score $repair_cost ca.tesseract run data get storage cartographer_repair_stations:tesseract Data.Equipped[0].components.minecraft:repair_cost
execute if score $void_main ca.tesseract matches 1.. unless score $repair_cost ca.tesseract <= $xp_maximum ca.repair_station_state run scoreboard players set $void_main ca.tesseract 0

execute if score $void_off ca.tesseract matches 1.. store result score $repair_cost ca.tesseract run data get storage cartographer_repair_stations:tesseract Data.Equipped[1].components.minecraft:repair_cost
execute if score $void_off ca.tesseract matches 1.. unless score $repair_cost ca.tesseract <= $xp_maximum ca.repair_station_state run scoreboard players set $void_off ca.tesseract 0

execute if score $void_head ca.tesseract matches 1.. store result score $repair_cost ca.tesseract run data get storage cartographer_repair_stations:tesseract Data.Equipped[2].components.minecraft:repair_cost
execute if score $void_head ca.tesseract matches 1.. unless score $repair_cost ca.tesseract <= $xp_maximum ca.repair_station_state run scoreboard players set $void_head ca.tesseract 0

execute if score $void_body ca.tesseract matches 1.. store result score $repair_cost ca.tesseract run data get storage cartographer_repair_stations:tesseract Data.Equipped[3].components.minecraft:repair_cost
execute if score $void_body ca.tesseract matches 1.. unless score $repair_cost ca.tesseract <= $xp_maximum ca.repair_station_state run scoreboard players set $void_body ca.tesseract 0

execute if score $void_legs ca.tesseract matches 1.. store result score $repair_cost ca.tesseract run data get storage cartographer_repair_stations:tesseract Data.Equipped[4].components.minecraft:repair_cost
execute if score $void_legs ca.tesseract matches 1.. unless score $repair_cost ca.tesseract <= $xp_maximum ca.repair_station_state run scoreboard players set $void_legs ca.tesseract 0

execute if score $void_feet ca.tesseract matches 1.. store result score $repair_cost ca.tesseract run data get storage cartographer_repair_stations:tesseract Data.Equipped[5].components.minecraft:repair_cost
execute if score $void_feet ca.tesseract matches 1.. unless score $repair_cost ca.tesseract <= $xp_maximum ca.repair_station_state run scoreboard players set $void_feet ca.tesseract 0

execute if score $void_main ca.tesseract matches 1.. run tellraw @s {"translate":"cartographer.repair_tesseract.break_item","fallback":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_off ca.tesseract matches 1.. run tellraw @s {"translate":"cartographer.repair_tesseract.break_item","fallback":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_head ca.tesseract matches 1.. run tellraw @s {"translate":"cartographer.repair_tesseract.break_item","fallback":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_body ca.tesseract matches 1.. run tellraw @s {"translate":"cartographer.repair_tesseract.break_item","fallback":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_legs ca.tesseract matches 1.. run tellraw @s {"translate":"cartographer.repair_tesseract.break_item","fallback":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}
execute if score $void_feet ca.tesseract matches 1.. run tellraw @s {"translate":"cartographer.repair_tesseract.break_item","fallback":"An item you were using has broken, and has been transported to the Repair Tesseract!","color":"#E24FFF","italic":false}

execute if score $void_main ca.tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[0]
execute if score $void_off ca.tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[1]
execute if score $void_head ca.tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[2]
execute if score $void_body ca.tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[3]
execute if score $void_legs ca.tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[4]
execute if score $void_feet ca.tesseract matches 1.. run data modify storage cartographer_repair_stations:tesseract Data.Queue append from storage cartographer_repair_stations:tesseract Data.Equipped[5]

scoreboard players set $void_main ca.tesseract 0
scoreboard players set $void_off ca.tesseract 0
scoreboard players set $void_head ca.tesseract 0
scoreboard players set $void_body ca.tesseract 0
scoreboard players set $void_legs ca.tesseract 0
scoreboard players set $void_feet ca.tesseract 0

tag @s remove ca.check_tesseract
