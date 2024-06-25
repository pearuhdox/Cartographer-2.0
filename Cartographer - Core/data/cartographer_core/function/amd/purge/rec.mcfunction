scoreboard players set $amd_found ca.var 0

function cartographer_core:amd/purge/macro with storage amd:mob_data storage[0]

execute if score $amd_found ca.var matches 1.. run data modify storage amd:mob_data retain append from storage amd:mob_data storage[0]

data remove storage amd:mob_data storage[0]

execute if data storage amd:mob_data storage[0] run function cartographer_core:amd/purge/rec