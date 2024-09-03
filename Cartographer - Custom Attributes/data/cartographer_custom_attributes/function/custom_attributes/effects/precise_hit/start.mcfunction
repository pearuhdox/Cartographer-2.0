$scoreboard players set $proc_coeff ca.precise_hit_var $(proc_coeff)

execute on attacker run scoreboard players operation $target ca.rand = @s ca.attr_precise_hit_chance_total
scoreboard players remove $target ca.rand 100

scoreboard players operation $target ca.rand *= $proc_coeff ca.precise_hit_var
scoreboard players operation $target ca.rand /= $100 ca.CONSTANT

execute on attacker run scoreboard players operation $entropy ca.rand = @s ca.precise_hit_entropy
execute on attacker run function cartographer_core:handlers/random/roll

execute unless score $success ca.rand matches 1.. run scoreboard players operation $value ca.precise_hit_entropy = $target ca.rand
execute unless score $success ca.rand matches 1.. run scoreboard players operation $value ca.precise_hit_entropy /= $10 ca.CONSTANT
execute unless score $success ca.rand matches 1.. if score $value ca.precise_hit_entropy matches 0 run scoreboard players set $value ca.precise_hit_entropy 1
execute unless score $success ca.rand matches 1.. on attacker run scoreboard players operation @s ca.precise_hit_entropy += $value ca.precise_hit_entropy

$execute if score $success ca.rand matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/precise_hit/get_damage/$(attack_type)

execute if score $success ca.rand matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/precise_hit/do