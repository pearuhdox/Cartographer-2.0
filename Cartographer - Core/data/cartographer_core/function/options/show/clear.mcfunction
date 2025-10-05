
execute if entity @s[tag=ca.using_dialog_menu] run scoreboard players remove $players_using_menu ca.options_trig 1

execute if score $players_using_menu ca.options_trig matches 0 if score $cmd_feedback ca.options_trig matches 1 run gamerule sendCommandFeedback true

tag @s remove ca.using_dialog_menu

dialog clear @s