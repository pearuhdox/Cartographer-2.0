data modify storage cartographer_mob_utils:fangs raw_data set value {}
data modify storage cartographer_mob_utils:fangs data set value {}
data modify storage cartographer_mob_utils:fangs data.id set value ""
data modify storage cartographer_mob_utils:fangs data.nbt set value {}
execute on origin run data modify storage cartographer_mob_utils:fangs raw_data set from entity @s data.fangs

data modify storage cartographer_mob_utils:fangs data.id set from storage cartographer_mob_utils:fangs raw_data.id
data remove storage cartographer_mob_utils:fangs raw_data.id
data modify storage cartographer_mob_utils:fangs data.nbt set from storage cartographer_mob_utils:fangs raw_data

function cartographer_mob_utils:custom_fangs/macro with storage cartographer_mob_utils:fangs data

tp @s ~ -500 ~