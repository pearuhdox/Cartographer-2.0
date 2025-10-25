#function cartographer_core:enchant_calculator/full_calculation {namespace:"minecraft:",category:"",enchantment:"thorns",type:"passive"}

function cartographer_custom_enchantments:enchantment/passive/thorns/run

tag @s add ca.enchant_tick
scoreboard players set $ench_timer ca.timer 10