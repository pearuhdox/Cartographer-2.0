data modify storage cartographer_mob_utils:summon raw_data set value {}
data modify storage cartographer_mob_utils:summon data set value {}
data modify storage cartographer_mob_utils:summon data.id set value ""
data modify storage cartographer_mob_utils:summon data.nbt set value {}
execute on origin run data modify storage cartographer_mob_utils:summon raw_data set from entity @s data.summon

data modify storage cartographer_mob_utils:summon data.id set from storage cartographer_mob_utils:summon raw_data.id
data remove storage cartographer_mob_utils:summon raw_data.id
data modify storage cartographer_mob_utils:summon data.nbt set from storage cartographer_mob_utils:summon raw_data

function cartographer_mob_utils:custom_summon/macro with storage cartographer_mob_utils:summon data

tp @s ~ -500 ~