########################################
# File: Cartographer Core - Load / Setup
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: The dialogue box for displaying credits.
########################################

execute as @p run function cartographer_core:load/spacer

execute as @p at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75
tellraw @p [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Developer Credits ⊱","color":"#dc85ff","bold":true},{"text":"❱","color":"gold","bold":true}]
tellraw @p {"text":"-------------------------------------","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"PearUhDox ","color":"#DB2FED","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Pack Creator","color":"#CFFFFD","bold":false,"italic":false,"underlined":false}]
tellraw @p {"text":" ","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"Gibbsly ","color":"#BF0000","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Event Handler Design, EHID Library Pack","color":"#CFFFFD","bold":false,"italic":false,"underlined":false}]
tellraw @p {"text":" ","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"RockNRed","color":"#BF0000","bold":false,"italic":false},{"text":", ","color":"#FFE0A3"},{"text":"Suso","color":"#61C0FF","bold":false,"italic":false},{"text":", ","color":"#FFE0A3"},{"text":"McTsTs ","color":"#04D621","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Black Box Library Pack","color":"#CFFFFD","bold":false,"italic":false,"underlined":false}]
tellraw @p {"text":" ","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"Mulv ","color":"#3dddc8","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Player Motion Library Pack","color":"#CFFFFD","bold":false,"italic":false,"underlined":false}]
tellraw @p {"text":" ","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"CooleyBrekka","color":"#A94DF5","bold":false,"italic":false},{"text":", ","color":"#FFE0A3"},{"text":"Suso ","color":"#61C0FF","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Mob Motion Library Pack","color":"#CFFFFD","bold":false,"italic":false,"underlined":false}]
tellraw @p {"text":" ","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"Sequex ","color":"#1ca4ff","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Translation Assistance, JPN Translation","color":"#CFFFFD","bold":false,"italic":false,"underlined":false}]
tellraw @p {"text":" ","color":"#FFE0A3","bold":true}


tellraw @p {"text":"-------------------------------------","color":"#FFE0A3","bold":true}
execute if score @s ca.credits_menu matches ..3 run tellraw @p [{"text":"","color":"gray","bold":true,"italic":false},{"text":"[⏎] ","color":"#33FFF8","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Return to the reload panel.","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger menu set 1000"}},{"text":"[»] ","color":"gray","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Currently Viewing Developer Credits","color":"#FFE0A3","italic":true}]}},{"text":"[»] ","color":"#90ffd1","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"View Tester Credits","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger ca.credits_menu set 2"}},{"text":"[»] ","color":"#ffb46e","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"View Patron Credits","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger ca.credits_menu set 3"}}]
execute unless score @s ca.credits_menu matches ..3 run tellraw @p [{"text":"","color":"gray","bold":true,"italic":false},{"text":"[»] ","color":"gray","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Currently Viewing Developer Credits","color":"#FFE0A3","italic":true}]}},{"text":"[»] ","color":"#90ffd1","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"View Tester Credits","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger ca.credits_menu set 5"}},{"text":"[»] ","color":"#ffb46e","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"View Patron Credits","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger ca.credits_menu set 6"}}]
tellraw @p {"text":"-------------------------------------","color":"#FFE0A3","bold":true}

