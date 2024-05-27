
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s ca.lexica_trig

tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Options ⊱","color":"yellow","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------","color":"#FFE0A3","bold":true}]
tellraw @s {"text":"Tweak various settings of the pack!","color":"#FFE0A3","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"Click on an option to toggle it!","color":"#FFF4D9","italic":true}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Core and Gamerules","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Tweak Cartographer Core gamerules that affect all packs.","color":"#FFF4D9","italic":true}]}}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Disable Anvils","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle to prevent the use of Anvils. Creative mode players overwrite this restriction.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/disable_anvil"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Disable Grindstones","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle to prevent the use of Grindstones. Creative mode players overwrite this restriction.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/disable_grindstone"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Global Reload Message","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle the reload message preset for new players.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules/global_reload_msg"}}]


tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @p [{"text":"[⏎]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to Options.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/main"}}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

