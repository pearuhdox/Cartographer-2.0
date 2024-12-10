scoreboard players remove @s ca.attack_cooldown_remaining 1

execute if score $custom_enchantments ca.installed matches 1.. if score @s ca.ench_concentration_lvl matches 1.. if score @s ca.attack_cooldown_remaining matches 2 run scoreboard players set @s ca.concentration_time 8
execute if score @s ca.attack_cooldown_remaining matches 0 run function #minecraft:cartographer/api/handlers/attack_speed/recharge

scoreboard players operation $val ca.attack_cooldown_percent = @s ca.attack_cooldown_remaining
scoreboard players operation $val ca.attack_cooldown_percent *= $100 ca.CONSTANT

scoreboard players operation $val ca.attack_cooldown_percent /= @s ca.attack_cooldown_total

scoreboard players operation @s ca.attack_cooldown_percent = $val ca.attack_cooldown_percent


#Calculate the "Next Percentage"
scoreboard players operation $next ca.attack_cooldown_percent = @s ca.attack_cooldown_remaining
scoreboard players remove $next ca.attack_cooldown_percent 1
execute if score $next ca.attack_cooldown_percent matches ..0 run scoreboard players set $next ca.attack_cooldown_percent 0

scoreboard players operation $next ca.attack_cooldown_percent *= $100 ca.CONSTANT

scoreboard players operation $next ca.attack_cooldown_percent /= @s ca.attack_cooldown_total