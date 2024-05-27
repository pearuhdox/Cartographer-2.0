#00000001-0000-0007-0000-001b0000000b
data modify storage cartographer_charon:vil slot.maxUses set value 1
data modify storage cartographer_charon:vil slot.rewardExp set value 0b
data modify storage cartographer_charon:vil slot.buy.id set value "minecraft:emerald"

# TODO - MOB ESSENCE TRADE
#execute if score $use_mob_essence ca.loot_table_rules matches 1.. run NYI

execute store result storage cartographer_charon:vil slot.buy.count int 1 if data storage cartographer_charon:bundle bundle.components.minecraft:custom_data.DeathBundleContents[]
data modify storage cartographer_charon:vil slot.sell set from storage cartographer_charon:bundle bundle

data modify entity 00000001-0000-0007-0000-001b0000000b Offers.Recipes prepend from storage cartographer_charon:vil slot

