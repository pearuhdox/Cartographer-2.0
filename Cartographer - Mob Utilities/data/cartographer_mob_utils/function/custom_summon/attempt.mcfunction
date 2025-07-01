scoreboard players set $valid ca.summon_var 0
execute on origin if entity @s[tag=ca.custom_summon] run scoreboard players set $valid ca.summon_var 1

scoreboard players set $cancel ca.summon_var 0
execute on origin if entity @s[tag=ca.no_summon] run scoreboard players set $cancel ca.summon_var 1

execute if score $cancel ca.summon_var matches 1.. run tp @s ~ -500 ~
execute if score $valid ca.summon_var matches 1.. run function cartographer_mob_utils:custom_summon/do

execute on origin if entity @s[tag=ca.listen_summon,tag=!ca.listened] at @s run function cartographer_mob_utils:listener/summon with entity @s data