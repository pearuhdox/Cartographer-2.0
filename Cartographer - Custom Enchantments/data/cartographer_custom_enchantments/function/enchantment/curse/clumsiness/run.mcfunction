execute if entity @s[type=player] unless score @s ca.ench_clumsiness_lvl matches 1.. run scoreboard players set @s ca.clumsiness_falling 0

#execute if entity @s[type=player] run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"clumsiness",type:"passive"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/hand_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"clumsiness",type:"passive"}

execute if entity @s[type=player] if predicate cartographer_core:player/sneaking if predicate cartographer_core:player/cant_crit if score @s ca.ench_clumsiness_lvl matches 1.. if entity @s[nbt={OnGround:1b}] run function cartographer_custom_enchantments:enchantment/curse/clumsiness/sneak_check

execute if entity @s[type=player] if score @s ca.ench_clumsiness_lvl matches 1.. if score @s ca.clumsiness_falling matches 1.. run function cartographer_custom_enchantments:enchantment/curse/clumsiness/fall

#Trigger if Instability Fall Damage is active
execute if entity @s[type=player] unless score @s ca.fragility_time matches 1.. if score @s ca.ench_clumsiness_lvl matches 1.. if score @s ca.ench_instability_lvl matches 1.. if score @s ca.instability_type matches 4 run function cartographer_custom_enchantments:enchantment/curse/clumsiness/fall


execute if entity @s[type=player] if score @s ca.ench_clumsiness_lvl matches 1.. run scoreboard players set @s ca.clumsiness_falling 0


#execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"clumsiness",type:"passive"}