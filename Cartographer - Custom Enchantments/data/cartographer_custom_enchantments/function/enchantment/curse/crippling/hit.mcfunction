#Do Player Check
execute if entity @s[type=player] run scoreboard players set @s ca.crippling_time 81

#Do Mob Check
execute unless entity @s[type=player] run scoreboard players set @s ca.crippling_time 5