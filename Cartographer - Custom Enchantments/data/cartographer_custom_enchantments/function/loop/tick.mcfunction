#Tell Cartographer this pack is in use
#scoreboard players set $custom_enchantments ca.installed 1

#execute unless score $do_fall_damage ca.gamerule matches 1.. run scoreboard players set $do_fall_damage ca.gamerule 1
#execute if score $do_fall_damage ca.gamerule matches 1.. run gamerule fallDamage false

#Running Haunting Animation - Also not done on event handler because they have to run every tick
execute if score $haunting_ct ca.ench_haunting_lvl matches 1.. as @e[type=item_display,tag=ca.haunting_display_main] at @s if entity @a[distance=..16] run function cartographer_custom_enchantments:enchantment/curse/haunting/animation/tick
execute if score $haunting_ct ca.ench_haunting_lvl matches ..-1 run scoreboard players set $haunting_ct ca.ench_haunting_lvl 0

#Run Failsafe for Warning Animations - All Should die in 20 seconds regardless of their moves.
execute if score $count ca.animations_var matches 1.. as @e[type=text_display,tag=ca.telegraph] at @s run function cartographer_custom_enchantments:loop/animation_failsafe
execute if score $count ca.animations_var matches ..-1 run scoreboard players set $count ca.animations_var 0
