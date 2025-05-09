tag @s remove ca.two_handed_main_lock
tag @s remove ca.two_handed_main_disable
tag @s remove ca.two_handed_offh_lock
tag @s remove ca.two_handed_offh_disable


execute if score @s ca.ench_two_handed_main_lvl matches 1 run tag @s add ca.two_handed_main_lock
execute if score @s ca.ench_two_handed_main_lvl matches 2.. run tag @s add ca.two_handed_main_disable
execute if score @s ca.ench_two_handed_main_lvl matches 1.. run scoreboard players add $count ca.ench_two_handed_lvl 1

execute if score @s ca.ench_two_handed_offh_lvl matches 1 run tag @s add ca.two_handed_offh_lock
execute if score @s ca.ench_two_handed_offh_lvl matches 2.. run tag @s add ca.two_handed_offh_disable
execute if score @s ca.ench_two_handed_offh_lvl matches 1.. run scoreboard players add $count ca.ench_two_handed_lvl 1

execute if items entity @s weapon.mainhand * if items entity @s weapon.offhand * run function cartographer_custom_enchantments:enchantment/curse/two_handed/activate

execute if items entity @s weapon.mainhand * unless items entity @s weapon.offhand * run function cartographer_custom_enchantments:enchantment/curse/two_handed/deactivate
execute unless items entity @s weapon.mainhand * if items entity @s weapon.offhand * run function cartographer_custom_enchantments:enchantment/curse/two_handed/deactivate