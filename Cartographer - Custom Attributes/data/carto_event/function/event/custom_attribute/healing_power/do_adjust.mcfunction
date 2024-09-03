
scoreboard players operation $diff ca.healing_power_hp = @s ca.healing_power_hp
scoreboard players operation $diff ca.healing_power_hp -= @s ca.healing_power_hp_past

scoreboard players operation $heal ca.healing_power_hp = $diff ca.healing_power_hp
scoreboard players operation $heal ca.healing_power_hp += @s ca.attr_healing_power_value

scoreboard players operation $heal ca.healing_power_hp *= @s ca.attr_healing_power_percent
scoreboard players operation $heal ca.healing_power_hp /= $100 ca.CONSTANT

scoreboard players operation $heal2 ca.healing_power_hp = $heal ca.healing_power_hp

scoreboard players operation $heal ca.healing_power_hp -= $diff ca.healing_power_hp

scoreboard players operation $bank2 ca.healing_power_hp = $heal ca.healing_power_hp

scoreboard players operation $bank ca.healing_power_hp = $heal ca.healing_power_hp
scoreboard players operation $bank ca.healing_power_hp %= $100 ca.CONSTANT

scoreboard players operation $heal ca.healing_power_hp /= $100 ca.CONSTANT
scoreboard players operation $heal ca.healing_power_hp *= $10 ca.CONSTANT

#Divide diff for checking damage if necessary
scoreboard players operation $diff10 ca.healing_power_hp = $diff ca.healing_power_hp
scoreboard players operation $diff10 ca.healing_power_hp /= $10 ca.CONSTANT

scoreboard players operation @s ca.healing_power_bank += $bank ca.healing_power_hp
execute if score @s ca.healing_power_bank matches 100.. run scoreboard players add $heal ca.healing_power_hp 10
execute if score @s ca.healing_power_bank matches 100.. run scoreboard players remove @s ca.healing_power_bank 100

execute if score $heal ca.healing_power_hp matches 10.. run scoreboard players operation @s ca.heal = $heal ca.healing_power_hp

execute if score $heal ca.healing_power_hp matches ..-10 run scoreboard players operation @s bbl.damage_queue = $heal ca.healing_power_hp
execute if score $heal ca.healing_power_hp matches ..-10 run scoreboard players operation @s bbl.damage_queue *= $-1 ca.CONSTANT
execute if score $heal ca.healing_power_hp matches ..-10 run scoreboard players operation @s bbl.damage_queue < $diff10 ca.healing_power_hp

execute if score $heal ca.healing_power_hp matches ..-10 run function carto_event:event/custom_attribute/healing_power/subtract

execute if score $heal ca.healing_power_hp matches 10.. run function cartographer_core:helper/heal_player/apply_heal
execute if score $heal ca.healing_power_hp matches ..-10 run function bb:call/hpm/player/damage/true
execute if score $heal ca.healing_power_hp matches ..-10 run scoreboard players set @s bbl.damage_queue 0

scoreboard players set @s ca.healing_power_cooldown 2