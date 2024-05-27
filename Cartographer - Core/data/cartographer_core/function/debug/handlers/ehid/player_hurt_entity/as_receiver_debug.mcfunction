#Outputs a debug message so the tag is not empty

#Debug Message
tellraw @a[scores={ca.debug_lvl=3..}] [{"text":"[Debug] ","color":"red"},{"text":"[EHID Handler - PHE] ","color":"yellow"},{"text":"❱ ","color":"#FFE0A3"},{"selector":"@s","color":"aqua"},{"text":" Was Hurt (As Receiver).","color":"#FFE0A3"}]