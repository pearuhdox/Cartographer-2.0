execute unless score $players_using_menu ca.options_trig matches 1.. store result score $cmd_feedback ca.options_trig run gamerule send_command_feedback
scoreboard players add $players_using_menu ca.options_trig 1

gamerule send_command_feedback false
tag @s add ca.using_dialog_menu