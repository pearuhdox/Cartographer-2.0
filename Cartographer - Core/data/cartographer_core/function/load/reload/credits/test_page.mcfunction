########################################
# File: Cartographer Core - Load / Setup
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: The dialogue box for displaying credits.
########################################

execute as @p run function cartographer_core:load/spacer

execute as @p at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75
tellraw @p [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Tester Credits ⊱","color":"#90ffd1","bold":true},{"text":"❱","color":"gold","bold":true}]
tellraw @p {"text":"-------------------------------------","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"Thanks to the following for beta testing!","color":"#CFFFFD","bold":false,"italic":false,"underlined":false}]
execute if entity @s[tag=degenerate] run tellraw @s [{"text":"Matoreichon ❤","color":"#e6e6e6","bold":false,"italic":false}]
execute unless entity @s[tag=degenerate] run tellraw @s [{"text":"Matoreichon","color":"#e6e6e6","bold":false,"italic":false}]
tellraw @s [{"text":"BeastMasterFTW","color":"#f7ec8a","bold":false,"italic":false}]
tellraw @s [{"text":"Compsogbrickus","color":"#ACFF1C","bold":false,"italic":false}]
tellraw @s [{"text":"Gizmo","color":"#3DFFC5","bold":false,"italic":false}]
tellraw @s [{"text":"KVT","color":"#b449cf","bold":false,"italic":false}]
tellraw @s [{"text":"Matt97","color":"#ffca1c","bold":false,"italic":false}]
tellraw @s [{"text":"RockNRed","color":"#FF004C","bold":false,"italic":false}]
tellraw @s [{"text":"Sequex","color":"#1ca4ff","bold":false,"italic":false}]
tellraw @s [{"text":"SlimeKing77777","color":"#3dff77","bold":false,"italic":false}]
tellraw @s [{"text":"Snowcone","color":"#bb80ff","bold":false,"italic":false}]


tellraw @p {"text":"-------------------------------------","color":"#FFE0A3","bold":true}
execute if score @s ca.credits_menu matches ..3 run tellraw @p [{"text":"","color":"gray","bold":true,"italic":false},{"text":"[⏎] ","color":"#33FFF8","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Return to the reload panel.","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger menu set 1000"}},{"text":"[»] ","color":"#dc85ff","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"View Developer Credits","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger ca.credits_menu set 1"}},{"text":"[»] ","color":"gray","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Currently Viewing Tester Credits","color":"gray","italic":true}]}},{"text":"[»] ","color":"#ffb46e","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"View Patron Credits","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger ca.credits_menu set 3"}}]
execute unless score @s ca.credits_menu matches ..3 run tellraw @p [{"text":"","color":"gray","bold":true,"italic":false},{"text":"[»] ","color":"#dc85ff","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"View Developer Credits","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger ca.credits_menu set 4"}},{"text":"[»] ","color":"gray","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Currently Viewing Tester Credits","color":"gray","italic":true}]}},{"text":"[»] ","color":"#ffb46e","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"View Patron Credits","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger ca.credits_menu set 6"}}]
tellraw @p {"text":"-------------------------------------","color":"#FFE0A3","bold":true}

