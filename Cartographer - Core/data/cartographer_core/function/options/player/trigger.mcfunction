#Lexica Dialogue Popup

#Swim Hit Is Crit - Enable/Disable
execute if score @s ca.options_trig matches 2010 run function cartographer_core:options/show/gamerule/swim_hit_is_crit
execute if score @s ca.options_trig matches 2011 run function cartographer_core:options/gamerules/swim_hit_is_crit/enable
execute if score @s ca.options_trig matches 2012 run function cartographer_core:options/gamerules/swim_hit_is_crit/disable

#Swimming Is Sprinting
execute if score @s ca.options_trig matches 2020 run function cartographer_core:options/show/gamerule/swimming_is_sprinting
execute if score @s ca.options_trig matches 2021 run function cartographer_core:options/gamerules/swimming_is_sprinting/enable
execute if score @s ca.options_trig matches 2022 run function cartographer_core:options/gamerules/swimming_is_sprinting/disable

#Reload Type
execute if score @s ca.options_trig matches 2030 run function cartographer_core:options/show/gamerule/reload_message
execute if score @s ca.options_trig matches 2031 run function cartographer_core:options/gamerules/reload_message/enable
execute if score @s ca.options_trig matches 2032 run function cartographer_core:options/gamerules/reload_message/disable

#View Reload Message
execute if score @s ca.options_trig matches 2033 run function cartographer_core:options/show/gamerule/swimming_is_sprinting

execute if score @s ca.options_trig matches -3 run function cartographer_core:options/show/open_reload_menu
execute if score @s ca.options_trig matches -1 run dialog show @s cartographer_core:menu_root
execute if score @s ca.options_trig matches -2 run function cartographer_core:options/show/clear
execute if score @s ca.options_trig matches 2000 run function cartographer_core:options/show/gamerules
execute if score @s ca.options_trig matches 3000 run function cartographer_core:options/show/charon

execute if score @s ca.options_trig matches 3010 run function cartographer_charon:options/show/gamerule/death_mode
execute if score @s ca.options_trig matches 3011..3014 run function cartographer_charon:options/gamerule/death_mode

execute if score @s ca.options_trig matches 3020 run function cartographer_charon:options/show/gamerule/multiplayer
execute if score @s ca.options_trig matches 3021 run function cartographer_charon:options/show/gamerule/multiplayer/shades
execute if score @s ca.options_trig matches 3022 run function cartographer_charon:options/show/gamerule/multiplayer/auto_respawn
execute if score @s ca.options_trig matches 3023..3024 run function cartographer_charon:options/gamerule/multiplayer/shades
execute if score @s ca.options_trig matches 3025..3026 run function cartographer_charon:options/gamerule/multiplayer/auto_respawn

execute if score @s ca.options_trig matches 3300 run function cartographer_charon:options/show/gamerule/void_settings
execute if score @s ca.options_trig matches 3310 run function cartographer_charon:options/show/gamerule/void_settings/void_ruleset
execute if score @s ca.options_trig matches 3320 run function cartographer_charon:options/show/gamerule/void_settings/home_ruleset
execute if score @s ca.options_trig matches 3330 run function cartographer_charon:options/globals/set_home_location

execute if score @s ca.options_trig matches 3311..3313 run function cartographer_charon:options/gamerule/void_settings/void_ruleset
execute if score @s ca.options_trig matches 3321..3323 run function cartographer_charon:options/gamerule/void_settings/home_ruleset

execute if score @s ca.options_trig matches 3400 run function cartographer_charon:options/show/gamerule/item_drop_rules
execute if score @s ca.options_trig matches 3410 run function cartographer_charon:options/show/gamerule/item_drop_rules/item_drop_rules
execute if score @s ca.options_trig matches 3420 run function cartographer_charon:options/show/gamerule/item_drop_rules/drop_rates
execute if score @s ca.options_trig matches 3430 run function cartographer_charon:options/show/gamerule/item_drop_rules/death_taxes

execute if score @s ca.options_trig matches 3050 run function cartographer_charon:options/show/gamerule/death_compass
execute if score @s ca.options_trig matches 3051..3052 run function cartographer_charon:options/gamerule/death_compass

execute if score @s ca.options_trig matches 3060 run function cartographer_charon:options/show/gamerule/spawner_defenses
execute if score @s ca.options_trig matches 3070 run function cartographer_charon:options/show/gamerule/retain_potion_effects


#Reset Lexica Trigger Score
scoreboard players set @s ca.options_trig 0