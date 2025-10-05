########################################
# File: Cartographer Core - Load / Setup
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: The dialogue box for displaying credits.
########################################

execute as @p run function cartographer_core:load/spacer

execute as @p at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75
tellraw @p [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Patron Credits ⊱","color":"#ffb46e","bold":true},{"text":"❱","color":"gold","bold":true}]
tellraw @p {"text":"-------------------------------------","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"Thanks to the following for","color":"#CFFFFD","bold":false,"italic":false,"underlined":false}]
tellraw @s [{"text":"financially supporting Cartographer!","color":"#CFFFFD","bold":false,"italic":false,"underlined":false}]


tellraw @p {"text":"-------------------------------------","color":"#FFE0A3","bold":true}
execute if score @s ca.credits_menu matches ..3 run tellraw @p [{"text":"","color":"gray","bold":true,"italic":false},{"text":"[⏎] ","color":"#33FFF8","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Return to the reload panel.","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger menu set 1000"}},{"text":"[»] ","color":"#dc85ff","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"View Developer Credits","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger ca.credits_menu set 1"}},{"text":"[»] ","color":"#90ffd1","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"View Tester Credits","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger ca.credits_menu set 2"}},{"text":"[»] ","color":"gray","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Currently Viewing Patron Credits","color":"#FFE0A3","italic":true}]}}]
execute unless score @s ca.credits_menu matches ..3 run tellraw @p [{"text":"","color":"gray","bold":true,"italic":false},{"text":"[»] ","color":"#dc85ff","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"View Developer Credits","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger ca.credits_menu set 4"}},{"text":"[»] ","color":"#90ffd1","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"View Tester Credits","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger ca.credits_menu set 5"}},{"text":"[»] ","color":"gray","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Currently Viewing Patron Credits","color":"#FFE0A3","italic":true}]}}]
tellraw @p {"text":"-------------------------------------","color":"#FFE0A3","bold":true}

