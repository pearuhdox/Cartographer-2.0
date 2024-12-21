loot replace entity 31182015-4512-2011-3118-115180000000 armor.head mine ~ ~ ~ minecraft:diamond_pickaxe[minecraft:enchantments={levels:{"minecraft:silk_touch":1}}]

data modify storage cartographer_core:get_block id set value ""
data modify storage cartographer_core:get_block id set from entity 31182015-4512-2011-3118-115180000000 ArmorItems[3].id

execute if items entity 31182015-4512-2011-3118-115180000000 armor.head minecraft:debug_stick run data modify storage cartographer_core:get_block id set value "minecraft:stone"

execute if block ~ ~ ~ bedrock run data modify storage cartographer_core:get_block id set value "minecraft:bedrock"

#particle minecraft:dust{color:[0.0,0.0,0.0],scale:2} ~ ~1 ~ 0 0 0 0 20 normal