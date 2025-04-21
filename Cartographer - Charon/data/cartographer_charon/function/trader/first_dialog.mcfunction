tellraw @s {"translate":"cartographer.charon.trader.first_dialog.1","fallback":"The mysterious shade grunts as to briefly acknowledge your existence, but continues glancing at his ledger.","color":"dark_aqua","italic":true}
tellraw @s {"translate":"cartographer.charon.trader.first_dialog.2","fallback":"Charon can be traded with like a villager using %s.","color":"gray","with":[[{"text":"[","color":"white","hover_event":{"action":"show_text","value":[{"text":"","color":"white"}]}},{"keybind":"key.use","color":"aqua","hover_event":{"action":"show_text","value":[{"text":"","color":"white"}]}},{"text":"]","color":"white","hover_event":{"action":"show_text","value":[{"text":"","color":"white"}]}}]]}
tellraw @s {"translate":"cartographer.charon.trader.first_dialog.3","fallback":"Charon will trade back items collected from death.","color":"gray","italic":false}

tag @s add ca.first_charon_dialog
playsound minecraft:entity.vex.ambient neutral @s ~ ~ ~ 2 0.5
playsound minecraft:entity.allay.ambient_without_item neutral @s ~ ~ ~ 0.3 0.5
playsound minecraft:entity.wither.hurt neutral @s ~ ~ ~ 1 2