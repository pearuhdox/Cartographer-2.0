scoreboard players operation $roll_count ca.chaotic_entropy = $chaotic ca.ench_value
scoreboard players remove $roll_count ca.chaotic_entropy 1

scoreboard players set $damage ca.chaotic_entropy 0

execute unless score @s ca.chaotic_entropy matches ..-1000 run scoreboard players set @s ca.chaotic_entropy 0

scoreboard players set $target ca.rand 35

scoreboard players operation $entropy ca.rand = @s ca.chaotic_entropy
function cartographer_core:handlers/random/roll

execute unless score $success ca.rand matches 1.. store result score $damage_add ca.chaotic_entropy run random value 50..150
execute if score $success ca.rand matches 1.. store result score $damage_add ca.chaotic_entropy run random value 151..200
scoreboard players operation $damage ca.chaotic_entropy += $damage_add ca.chaotic_entropy

execute if score $roll_count ca.chaotic_entropy matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/chaotic/roll_rec

execute if score $success ca.rand matches 1.. run scoreboard players set @s ca.chaotic_entropy 0
execute unless score $success ca.rand matches 1.. run scoreboard players add @s ca.chaotic_entropy 1

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $damage ca.chaotic_entropy