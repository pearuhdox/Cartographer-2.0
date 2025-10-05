########################################
# File: Cartographer Core - Load / Setup
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: The dialogue box for displaying credits.
########################################

function cartographer_core:load/spacer

playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75
tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------","color":"#FFE0A3","bold":true}]
tellraw @s {"text":"All currently installed library packs.","color":"#FFE0A3","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}


execute if score $#lib_bbl ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Black Box Library by RockNRed","color":"#F04FF0","hover_event":{"action":"show_text","value":[{"text":"A library module by RockNRed and PearUhDox. Handles miscellaneous functions and utilites.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3"}]
execute if score $#lib_bs ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Bookshelf by Aksiome and Co.","color":"#F04FF0","hover_event":{"action":"show_text","value":[{"text":"A library module with useful utilities such as math functions.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3"}]
#execute if score $#lib_dies ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Display Item Entity System by RockNRed","color":"#F04FF0","hover_event":{"action":"show_text","value":[{"text":"A library module by RockNRed. Allows seamless in world item placement.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3"}]
execute if score $#lib_ehid ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Entity Hit Detection by gibbsly","color":"#F04FF0","hover_event":{"action":"show_text","value":[{"text":"A library module by gibbsly. Runs entity hit and player hit detection.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3"}]
execute if score $#lib_mot ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Mob Motion by Suso & CooleyBrekka","color":"#F04FF0","hover_event":{"action":"show_text","value":[{"text":"A library module by Suso. Follows the interface defined by CooleyBrekka. Allows for updating and giving mobs fluid motion.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3"}]
execute if score $#lib_del ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Player Motion by Mulv and BigPapi","color":"#F04FF0","hover_event":{"action":"show_text","value":[{"text":"A library module by Mulv and BigPapi that can be used to give players motion.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3"}]

tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @s [{"text":"[⏎]","color":"#33FFF8","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Return to the reload panel.","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger menu set 1000"}}]
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

