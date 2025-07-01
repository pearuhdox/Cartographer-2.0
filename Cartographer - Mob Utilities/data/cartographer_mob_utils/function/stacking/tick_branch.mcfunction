execute if entity @s[type=item_display] run function cartographer_mob_utils:stacking/display/tick
execute unless entity @s[type=item_display] run function cartographer_mob_utils:stacking/entity/tick

scoreboard players set $timer ca.stack_var 40