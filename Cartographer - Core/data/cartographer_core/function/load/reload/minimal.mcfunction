#Full reload
function cartographer_core:load/spacer

#Run for players with minimal reload
tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":" Reloaded!","color":"#6fe0be","bold":false}]

tellraw @s {"text":"-----------------------","color":"#FFE0A3","bold":true}

execute unless score $#lib_bbl ca.installed matches 1 run function cartographer_core:load/warnings/bbl
execute unless score $#lib_bs ca.installed matches 1 run function cartographer_core:load/warnings/bs
execute unless score $#lib_del ca.installed matches 1 run function cartographer_core:load/warnings/delta
execute unless score $#lib_dies ca.installed matches 1 run function cartographer_core:load/warnings/dies
execute unless score $#lib_ehid ca.installed matches 1 run function cartographer_core:load/warnings/ehid
execute unless score $#lib_mot ca.installed matches 1 run function cartographer_core:load/warnings/mot

tellraw @s [{"text":"[📦]","color":"#C4FFFF","bold":true,"italic":false,"clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer-2.0"},"hoverEvent":{"action":"show_text","contents":[{"text":"Version: ","color":"#C4FFFF","bold":false},{"text":"January 2025 Release for MC 1.21.4","color":"white","underlined":true},{"text":"\nClick to visit Cartographer's Github!","color":"#FFE0A3","italic":true}]}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⭐]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to see who helped bring you Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.credits_menu set 1"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⚙]","color":"#E8E86D","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to configure various options in Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.options_trig set 1"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[»]","color":"#F04FF0","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click for detailed information on all installed library packs.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload/show_libraries"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[»]","color":"#21FF6B","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click for detailed information on all installed content packs.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload/show_installed"}}]

tellraw @s {"text":"-----------------------","color":"#FFE0A3","bold":true}


scoreboard players set @s menu 0