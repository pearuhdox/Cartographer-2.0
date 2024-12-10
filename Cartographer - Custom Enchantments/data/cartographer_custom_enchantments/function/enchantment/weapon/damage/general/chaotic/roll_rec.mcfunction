scoreboard players remove $roll_count ca.chaotic_entropy 1

execute unless score $success ca.rand matches 1.. store result score $damage_add ca.chaotic_entropy run random value 25..75
execute if score $success ca.rand matches 1.. store result score $damage_add ca.chaotic_entropy run random value 76..100
scoreboard players operation $damage ca.chaotic_entropy += $damage_add ca.chaotic_entropy

execute if score $roll_count ca.chaotic_entropy matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/chaotic/roll_rec