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
tellraw @s {"text":"All currently installed content packs.","color":"#FFE0A3","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

execute if score $charon ca.installed matches 1 run function cartographer_charon:load/load_message
execute if score $custom_attributes ca.installed matches 1 run function cartographer_custom_attributes:load/load_message
execute if score $custom_enchantments ca.installed matches 1 run function cartographer_custom_enchantments:load/load_message
execute if score $custom_statuses ca.installed matches 1 run function cartographer_custom_statuses:load/load_message
execute if score $enchantment_rework ca.installed matches 1 run function cartographer_enchantment_rework:load/load_message
execute if score $ender_pouch ca.installed matches 1 run function cartographer_ender_pouch:load/load_message
execute if score $lexica ca.installed matches 1 run function cartographer_lexica:load/load_message
#execute if score $loot_additions ca.installed matches 1 run function cartographer_loot_additions:load/load_message
#execute if score $mimics ca.installed matches 1 run function cartographer_mimics:load/load_message
execute if score $mob_utils ca.installed matches 1 run function cartographer_mob_utils:load/load_message
execute if score $rat ca.installed matches 1 run function cartographer_rat:load/load_message
execute if score $repair_stations ca.installed matches 1 run function cartographer_repair_stations:load/load_message

tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @s [{"text":"[⏎]","color":"#33FFF8","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Return to the reload panel.","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger menu set 1000"}}]
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

