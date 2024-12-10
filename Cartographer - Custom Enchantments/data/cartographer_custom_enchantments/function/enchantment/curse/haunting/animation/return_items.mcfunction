summon item ~ ~ ~ {Tags:["ca.haunting_new_return"],Item:{id:"minecraft:stone",count:1}}

data modify storage cartographer:custom_enchantments item set value {}
data modify storage cartographer:custom_enchantments item set from entity @s item

execute as @e[type=item,tag=ca.haunting_new_return,limit=1,sort=nearest] at @s run data modify entity @s Item set from storage cartographer:custom_enchantments item
execute as @e[type=item,tag=ca.haunting_new_return,limit=1,sort=nearest] at @s run tag @s remove ca.haunting_new_return