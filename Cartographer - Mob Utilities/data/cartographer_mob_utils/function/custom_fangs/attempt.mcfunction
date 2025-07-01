scoreboard players set $valid ca.fangs_var 0
execute on origin if entity @s[tag=ca.custom_fangs] run scoreboard players set $valid ca.fangs_var 1

scoreboard players set $cancel ca.fangs_var 0
execute on origin if entity @s[tag=ca.no_fangs] run scoreboard players set $cancel ca.fangs_var 1

execute if score $cancel ca.fangs_var matches 1.. run tp @s ~ -500 ~
execute if score $valid ca.fangs_var matches 1.. run function cartographer_mob_utils:custom_fangs/do

execute on origin if entity @s[tag=ca.listen_fangs,tag=!ca.listened] at @s run function cartographer_mob_utils:listener/fangs with entity @s data