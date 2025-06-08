scoreboard players set $success ca.rand 0
$scoreboard players set $reconstruct_slot ca.ench_var $(slot)

$scoreboard players set $target ca.rand $(level)
scoreboard players operation $target ca.rand *= $15 ca.CONSTANT

scoreboard players set $extra_dur ca.reconstruction_entropy 0
execute if score $target ca.rand matches 100.. run scoreboard players add $extra_dur ca.reconstruction_entropy 1
execute if score $target ca.rand matches 200.. run scoreboard players add $extra_dur ca.reconstruction_entropy 1

execute if score $target ca.rand matches 200.. run scoreboard players remove $target ca.rand 100
execute if score $target ca.rand matches 100.. run scoreboard players remove $target ca.rand 100

scoreboard players operation $entropy ca.rand = @s ca.reconstruction_entropy
function cartographer_core:handlers/random/roll

execute unless score $success ca.rand matches 1.. run scoreboard players operation $value ca.reconstruction_entropy = $target ca.rand
execute unless score $success ca.rand matches 1.. run scoreboard players operation $value ca.reconstruction_entropy /= $10 ca.CONSTANT
execute unless score $success ca.rand matches 1.. if score $value ca.reconstruction_entropy matches 0 run scoreboard players set $value ca.reconstruction_entropy 1
execute unless score $success ca.rand matches 1.. run scoreboard players operation @s ca.reconstruction_entropy += $value ca.reconstruction_entropy

execute if score $success ca.rand matches 1.. run scoreboard players set @s ca.reconstruction_entropy 0

scoreboard players set $do_repair ca.reconstruction_entropy 0
execute if score $success ca.rand matches 1.. run scoreboard players set $do_repair ca.reconstruction_entropy 1 
execute if score $extra_dur ca.reconstruction_entropy matches 1.. run scoreboard players set $do_repair ca.reconstruction_entropy 1 

execute if score $do_repair ca.reconstruction_entropy matches 1.. run function cartographer_custom_enchantments:enchantment/passive/reconstruction/modify/zzz_create

execute if score $do_repair ca.reconstruction_entropy matches 1.. if score $reconstruct_slot ca.ench_var matches 0..8 run function cartographer_custom_enchantments:enchantment/passive/reconstruction/modify/hotbar with storage cartographer_custom_enchantments:reconstruction macro
execute if score $do_repair ca.reconstruction_entropy matches 1.. if score $reconstruct_slot ca.ench_var matches -106 run function cartographer_custom_enchantments:enchantment/passive/reconstruction/modify/offhand
execute if score $do_repair ca.reconstruction_entropy matches 1.. if score $reconstruct_slot ca.ench_var matches 100..103 run function cartographer_custom_enchantments:enchantment/passive/reconstruction/modify/armor