execute if score @s ca.life_drain_entropy matches ..-1 run scoreboard players set @s ca.life_drain_entropy 0

$scoreboard players set $proc_coeff ca.life_drain_buffer $(proc_coeff)

scoreboard players operation $target ca.rand = $life_drain_chance ca.attr_apply_var
#scoreboard players remove $target ca.rand 100

scoreboard players operation $target ca.rand *= $proc_coeff ca.life_drain_buffer
scoreboard players operation $target ca.rand /= $100 ca.CONSTANT

scoreboard players operation $entropy ca.rand = @s ca.life_drain_entropy
function cartographer_core:handlers/random/roll

execute unless score $success ca.rand matches 1.. run scoreboard players operation $value ca.life_drain_entropy = $target ca.rand
execute unless score $success ca.rand matches 1.. run scoreboard players operation $value ca.life_drain_entropy /= $10 ca.CONSTANT
execute unless score $success ca.rand matches 1.. if score $value ca.life_drain_entropy matches 0 run scoreboard players set $value ca.life_drain_entropy 1
execute unless score $success ca.rand matches 1.. run scoreboard players operation @s ca.life_drain_entropy += $value ca.life_drain_entropy

execute if score $success ca.rand matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/life_drain/restore