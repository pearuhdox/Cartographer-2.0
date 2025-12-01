#Sfx
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

#Full reload
function cartographer_core:load/spacer

#Run for players with minimal reload
tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":" Reloaded!","color":"#6fe0be","bold":false}]

tellraw @s {"text":"-----------------------","color":"#FFE0A3","bold":true}

execute unless score $#lib_bs ca.installed matches 1 run function cartographer_core:load/warnings/bs
execute unless score $#lib_del ca.installed matches 1 run function cartographer_core:load/warnings/delta
execute unless score $#lib_mot ca.installed matches 1 run function cartographer_core:load/warnings/mot

tellraw @s [{"text":"[📦]","color":"#C4FFFF","bold":true,"italic":false,"click_event":{"action":"open_url","url":"https://github.com/pearuhdox/Cartographer-2.0"},"hover_event":{"action":"show_text","value":[{"text":"Version: ","color":"#C4FFFF","bold":false},{"text":"December 2025 Release for MC 1.21.10","color":"white","underlined":true},{"text":"\nClick to visit Cartographer's Github!","color":"#FFE0A3","italic":true}]}},{"text":" ","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⭐]","color":"#33FFF8","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Click to see who helped bring you Cartographer.","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger ca.credits_menu set 1"}},{"text":" ","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⚙]","color":"#E8E86D","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"Click to configure various options in Cartographer.","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger menu set 1"}},{"text":" ","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[»]","color":"#F04FF0","bold":true,"hover_event":{"action":"show_text","value":[{"text":"Click for detailed information on all installed library packs.","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger menu set 2"}},{"text":" ","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[»]","color":"#21FF6B","bold":true,"hover_event":{"action":"show_text","value":[{"text":"Click for detailed information on all installed content packs.","color":"#FFE0A3","italic":true}]},"click_event":{"action":"run_command","command":"/trigger menu set 3"}}]

tellraw @s {"text":"-----------------------","color":"#FFE0A3","bold":true}


scoreboard players set @s menu 0