#Outputs a debug message so the tag is not empty

#Debug Message
tellraw @a[scores={ca.debug_lvl=3..}] [{"text":"[Debug] ","color":"red"},{"text":"[Core] ","color":"yellow"},{"text":"❱ ","color":"#FFE0A3"},{"selector":"@s","color":"aqua"},{"text":" Aiming Trident.","color":"#FFE0A3"}]