execute unless score $players_using_menu ca.options_trig matches 1.. store result score $cmd_feedback ca.options_trig run gamerule sendCommandFeedback
scoreboard players add $players_using_menu ca.options_trig 1

gamerule sendCommandFeedback false
tag @s add ca.using_dialog_menu