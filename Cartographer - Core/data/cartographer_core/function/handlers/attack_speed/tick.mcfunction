scoreboard players remove @s ca.attack_cooldown_remaining 1

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