execute if score $charon ca.installed matches 1.. run function cartographer_core:options/show/do_dialog_charon
execute unless score $charon ca.installed matches 1.. run tellraw @s {"color":"red","text":"Charon is not installed, cannot show this menu!"}
