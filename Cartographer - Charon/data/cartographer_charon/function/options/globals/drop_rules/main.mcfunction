
scoreboard players set $gmr_freeze ca.mutex 1




playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s ca.lexica_trig

tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Options ⊱","color":"yellow","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------","color":"#FFE0A3","bold":true}]
tellraw @s {"text":"Tweak various settings of the pack!","color":"#FFE0A3","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"Click on an option to toggle it!","color":"#FFF4D9","italic":true}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Charon","color":"gray","italic":false,"hover_event":{"action":"show_text","value":[{"text":"Tweak Vanilla and Core gamerules.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Drop Rules","color":"gray","italic":false,"hover_event":{"action":"show_text","value":[{"text":"Set which items or slots can drop or always drop.","color":"#FFF4D9","italic":true}]}}]

tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Always Drop Shulker Boxes","color":"aqua","italic":false,"hover_event":{"action":"show_text","value":[{"text":"Set whether Shulker Boxes are always dropped on death.","color":"#FFF4D9","italic":true}]},"click_event":{"action":"run_command","command":"/function cartographer_charon:options/globals/drop_rules/shulker_boxes"}}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Never Drop Hotbar","color":"aqua","italic":false,"hover_event":{"action":"show_text","value":[{"text":"Set whether hotbar items are never dropped on death. (Unless an above rule would specify otherwise.)","color":"#FFF4D9","italic":true}]},"click_event":{"action":"run_command","command":"/function cartographer_charon:options/globals/drop_rules/hotbar"}}]
tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Never Drop Armor","color":"aqua","italic":false,"hover_event":{"action":"show_text","value":[{"text":"Set whether armor items are never dropped on death. (Unless an above rule would specify otherwise.)","color":"#FFF4D9","italic":true}]},"click_event":{"action":"run_command","command":"/function cartographer_charon:options/globals/drop_rules/armor"}}]
tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Never Drop Offhand","color":"aqua","italic":false,"hover_event":{"action":"show_text","value":[{"text":"Set whether offhand items are never dropped on death. (Unless an above rule would specify otherwise.)","color":"#FFF4D9","italic":true}]},"click_event":{"action":"run_command","command":"/function cartographer_charon:options/globals/drop_rules/offhand"}}]
tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Never Drop Backpack","color":"aqua","italic":false,"hover_event":{"action":"show_text","value":[{"text":"Set whether the backpack (remaining inventory slots) are never dropped on death. (Unless an above rule would specify otherwise.)","color":"#FFF4D9","italic":true}]},"click_event":{"action":"run_command","command":"/function cartographer_charon:options/globals/drop_rules/backpack"}}]



tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @p [{"text":"[⏎]","color":"#33FFF8","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Return to Options.","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/function cartographer_charon:options/main"}}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

