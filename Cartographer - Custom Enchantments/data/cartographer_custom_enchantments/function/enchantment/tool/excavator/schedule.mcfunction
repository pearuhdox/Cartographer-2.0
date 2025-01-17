#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set @s ca.ench_duelist_lvl 0
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"tool/",enchantment:"excavator",type:"tool"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set $check ca.core_delay_check 1

execute unless entity @s[type=player] if entity @a[distance=..8,gamemode=!creative,gamemode=!spectator] unless score @s ca.excavator_cooldown matches 1.. if predicate cartographer_core:periodic_tick/4 run function cartographer_custom_enchantments:enchantment/tool/excavator/entity/activate

execute unless entity @s[type=player] if score @s ca.excavator_cooldown matches 1.. if predicate cartographer_core:periodic_tick/20 run scoreboard players remove @s ca.excavator_cooldown 1