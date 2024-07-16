execute store result score $entropy ca.evasion_amount run scoreboard players get @s ca.evasion_amount
scoreboard players operation $entropy ca.evasion_amount /= $4 ca.CONSTANT
scoreboard players operation $entropy ca.evasion_amount > $8 ca.CONSTANT


execute if score @s ca.evasion_chance <= @s ca.evasion_amount run scoreboard players set @s ca.evasion_entropy 0
execute unless score @s ca.evasion_chance <= @s ca.evasion_amount run scoreboard players operation @s ca.evasion_entropy += $entropy ca.evasion_amount

execute if score @s ca.evasion_chance <= @s ca.evasion_amount if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

execute if score @s ca.evasion_chance <= @s ca.evasion_amount if entity @s[type=player] run playsound minecraft:entity.firework_rocket.launch player @a[distance=..8] ~ ~ ~ 2 1.5

execute if score @s ca.evasion_chance <= @s ca.evasion_amount unless entity @s[type=player] at @s run playsound minecraft:entity.firework_rocket.launch hostile @a[distance=..16] ~ ~ ~ 2 1.5
execute if score @s ca.evasion_chance <= @s ca.evasion_amount unless entity @s[type=player] positioned ~ ~1 ~ run particle dust{color:[0.820,0.965,1.000],scale:2} ~ ~ ~ 0.25 0.25 0.25 1 8 normal


execute store result score $random ca.evasion_chance run random value 1..100

scoreboard players operation $random ca.evasion_chance -= @s ca.evasion_entropy

scoreboard players operation @s ca.evasion_chance = $random ca.evasion_chance


scoreboard players set $ev_override ca.status_var 0
execute if data entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect run scoreboard players set $ev_override ca.status_var 1
execute unless score $ev_override ca.status_var matches 1.. run effect clear @s minecraft:resistance

execute if score $ev_override ca.status_var matches 1.. run function carto_event:event/custom_statuses/evasion/hidden_effect