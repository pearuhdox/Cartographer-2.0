scoreboard players set $success ca.rand 0
tag @s add ca.drilling_used

scoreboard players operation $target ca.rand = $collapse ca.ench_drilling_lvl
scoreboard players operation $target ca.rand *= $5 ca.CONSTANT

scoreboard players operation $entropy ca.rand = @s ca.drilling_entropy

execute unless score @s ca.drilling_cooldown matches 1.. run function cartographer_core:handlers/random/roll
execute if score @s ca.drilling_cooldown matches 1.. run scoreboard players remove @s ca.drilling_cooldown 1

execute if score $success ca.rand matches 1.. run function cartographer_custom_enchantments:enchantment/tool/drilling/crit_block
execute if score $success ca.rand matches 1.. run scoreboard players set @s ca.drilling_entropy 0
execute if score $success ca.rand matches 1.. run scoreboard players set @s ca.drilling_cooldown 1



execute unless score $success ca.rand matches 1.. run scoreboard players add @s ca.drilling_entropy 1