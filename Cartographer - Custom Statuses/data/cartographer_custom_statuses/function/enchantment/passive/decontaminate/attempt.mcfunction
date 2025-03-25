scoreboard players operation $value ca.ench_decontaminate_lvl = @s ca.ench_decontaminate_lvl
scoreboard players operation $value ca.ench_decontaminate_lvl *= $5 ca.CONSTANT

scoreboard players operation $target ca.rand = $value ca.ench_decontaminate_lvl

scoreboard players operation $entropy ca.rand = @s ca.decontaminate_entropy
function cartographer_core:handlers/random/roll

execute unless score $success ca.rand matches 1.. run scoreboard players operation $value ca.decontaminate_entropy = $target ca.rand
execute unless score $success ca.rand matches 1.. run scoreboard players operation $value ca.decontaminate_entropy /= $10 ca.CONSTANT
execute unless score $success ca.rand matches 1.. if score $value ca.decontaminate_entropy matches ..0 run scoreboard players set $value ca.decontaminate_entropy 1
execute unless score $success ca.rand matches 1.. run scoreboard players operation @s ca.decontaminate_entropy += $value ca.decontaminate_entropy

execute if score $success ca.rand matches 1.. run function cartographer_custom_statuses:enchantment/passive/decontaminate/cleanse
execute if score $success ca.rand matches 1.. run scoreboard players set @s ca.decontaminate_entropy 0