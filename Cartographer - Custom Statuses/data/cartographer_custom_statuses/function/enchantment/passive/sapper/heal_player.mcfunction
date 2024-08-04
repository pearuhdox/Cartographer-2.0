scoreboard players operation @s ca.heal = $value ca.ench_var
scoreboard players operation @s ca.heal *= $10 ca.CONSTANT

function cartographer_core:helper/heal_player/apply_heal

playsound minecraft:entity.witch.drink player @s ~ ~ ~ 0.5 1.5
