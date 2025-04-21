loot replace entity 31182015-4512-2011-3118-115180000000 armor.head mine ~ ~ ~ minecraft:diamond_pickaxe[minecraft:enchantments={"minecraft:silk_touch":1}]

data modify storage cartographer_core:get_block id set value ""
data modify storage cartographer_core:get_block id set from entity 31182015-4512-2011-3118-115180000000 equipment.head.id

execute if items entity 31182015-4512-2011-3118-115180000000 armor.head minecraft:debug_stick run data modify storage cartographer_core:get_block id set value "minecraft:stone"

execute if block ~ ~ ~ bedrock run data modify storage cartographer_core:get_block id set value "minecraft:bedrock"
execute if block ~ ~ ~ spawner run data modify storage cartographer_core:get_block id set value "minecraft:spawner"
execute if block ~ ~ ~ trial_spawner run data modify storage cartographer_core:get_block id set value "minecraft:trial_spawner"
execute if block ~ ~ ~ reinforced_deepslate run data modify storage cartographer_core:get_block id set value "minecraft:reinforced_deepslate"
execute if block ~ ~ ~ command_block run data modify storage cartographer_core:get_block id set value "minecraft:commmand_block"
execute if block ~ ~ ~ chain_command_block run data modify storage cartographer_core:get_block id set value "minecraft:chain_command_block"
execute if block ~ ~ ~ repeating_command_block run data modify storage cartographer_core:get_block id set value "minecraft:repeating_command_block"
execute if block ~ ~ ~ barrier run data modify storage cartographer_core:get_block id set value "minecraft:barrier"
execute if block ~ ~ ~ structure_block run data modify storage cartographer_core:get_block id set value "minecraft:structure_block"
execute if block ~ ~ ~ jigsaw run data modify storage cartographer_core:get_block id set value "minecraft:jigsaw"
execute if block ~ ~ ~ dragon_egg run data modify storage cartographer_core:get_block id set value "minecraft:dragon_egg"
execute if block ~ ~ ~ water run data modify storage cartographer_core:get_block id set value "minecraft:water"
execute if block ~ ~ ~ lava run data modify storage cartographer_core:get_block id set value "minecraft:lava"
execute if block ~ ~ ~ air run data modify storage cartographer_core:get_block id set value "minecraft:stone"
execute if block ~ ~ ~ cake run data modify storage cartographer_core:get_block id set value "minecraft:cake"
execute if block ~ ~ ~ suspicious_gravel run data modify storage cartographer_core:get_block id set value "minecraft:gravel"
execute if block ~ ~ ~ suspicious_sand run data modify storage cartographer_core:get_block id set value "minecraft:sand"
execute if block ~ ~ ~ fire run data modify storage cartographer_core:get_block id set value "minecraft:stone"
execute if block ~ ~ ~ soul_fire run data modify storage cartographer_core:get_block id set value "minecraft:stone"
execute if block ~ ~ ~ budding_amethyst run data modify storage cartographer_core:get_block id set value "minecraft:amethyst_block"
execute if block ~ ~ ~ powder_snow run data modify storage cartographer_core:get_block id set value "minecraft:snow"
execute if block ~ ~ ~ frosted_ice run data modify storage cartographer_core:get_block id set value "minecraft:ice"
execute if block ~ ~ ~ nether_portal run data modify storage cartographer_core:get_block id set value "minecraft:nether_portal"
execute if block ~ ~ ~ end_portal run data modify storage cartographer_core:get_block id set value "minecraft:black_concrete"
execute if block ~ ~ ~ end_gateway run data modify storage cartographer_core:get_block id set value "minecraft:black_concrete"

#particle minecraft:dust{color:[0.0,0.0,0.0],scale:2} ~ ~1 ~ 0 0 0 0 20 normal