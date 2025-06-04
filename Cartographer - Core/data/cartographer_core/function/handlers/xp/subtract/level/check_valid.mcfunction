#Check if player levels are higher than the wanted subtraction. If player level is lower, return 0 immediately
execute store result score $player_lvl ca.xp run xp query @s levels
execute if score $player_lvl ca.xp < $input_lvl ca.xp run return 0