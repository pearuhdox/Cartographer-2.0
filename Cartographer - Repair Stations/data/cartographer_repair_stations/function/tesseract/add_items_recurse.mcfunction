#Setup trade
data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:1,buy:{id:"minecraft:dirt",Count:8b},sell:{id:"minecraft:barrier",Count:1b}}

#Make the Current value a separate data index
data modify storage cartographer_repair_stations:tesseract Data.Current set value {}
data modify storage cartographer_repair_stations:tesseract Data.Current set from storage cartographer_repair_stations:tesseract Data.Queue[0] 

#Remove Slot data from Current
data remove storage cartographer_repair_stations:tesseract Data.Current.Slot

#Remove Current from Queue
data remove storage cartographer_repair_stations:tesseract Data.Queue[0]

#Assign the correct buy item based on data
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:wooden_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:oak_planks",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:wooden_hoe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:oak_planks",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:wooden_pickaxe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:oak_planks",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:wooden_shovel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:oak_planks",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:wooden_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:oak_planks",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:stone_axe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:stone_hoe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:stone_pickaxe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:stone_shovel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:stone_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_axe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_hoe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_pickaxe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_shovel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:flint_and_steel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:shears"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_axe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_hoe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_pickaxe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_shovel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_axe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_hoe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_pickaxe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_shovel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_axe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_hoe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_pickaxe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_shovel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:leather_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:leather",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:leather_chestplate"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:leather",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:leather_leggings"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:leather",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:leather_boots"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:leather",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_chestplate"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_leggings"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_boots"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:chainmail_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:chain",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:chainmail_chestplate"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:chain",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:chainmail_leggings"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:chain",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:chainmail_boots"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:chain",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_chestplate"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_leggings"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_boots"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_chestplate"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_leggings"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_boots"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_chestplate"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_leggings"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_boots"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:shield"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:bow"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:string",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:crossbow"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:string",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:brush"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:string",count:2}

execute if score $tridents_use_prismarine ca.repair_station_state matches 1.. if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:trident"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:prismarine_shard",count:2}
execute unless score $tridents_use_prismarine ca.repair_station_state matches 1.. if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:trident"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:quartz",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:turtle_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:turtle_scute",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:wolf_armor"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:armadillo_scute",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:carrot_on_a_stick"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:carrot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:warped_fungus_on_a_stick"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:warped_fungus",count:2}

# Or Assign if it has custom repair materials

execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"wooden"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:oak_planks",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"stone"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"golden"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"iron"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"diamond"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"netherite"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"leather"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:leather",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"chain"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:chain",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"turtle_scute"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:turtle_scute",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"armadillo_scute"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:armadillo_scute",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"membrane"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:phantom_membrane",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"string"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:string",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"quartz"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:quartz",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"redstone"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:redstone",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"amethyst"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:amethyst_shard",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"copper"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:copper_ingot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"emerald"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:caarrot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"carrot"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:warped_fungus",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"warped"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:carrot",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"prismarine"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:prismarine_shard",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"ink"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:ink_sac",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"ender"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:ender_pearl",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"gunpowder"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gunpowder",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"glowstone"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:glowstone_dust",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"blaze_powder"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:blaze_powder",count:2}

execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"slime"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:slime_ball",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"magma"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:magma_cream",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"star"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:nether_star",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"echo"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:echo_shard",count:2}
execute if data storage cartographer_repair_stations:tesseract Data.Current.components.minecraft:custom_data:{CustomRepair:{material:"shulker"}} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:shulker_shell",count:2}

#Make Sell Item Current Item
data modify entity @s Offers.Recipes[-1].sell set from storage cartographer_repair_stations:tesseract Data.Current

#Recurse condition. Iterate until nothing left.
execute if data storage cartographer_repair_stations:tesseract Data.Queue[0] run function cartographer_repair_stations:tesseract/add_items_recurse