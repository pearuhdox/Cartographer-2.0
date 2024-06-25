data modify storage amd:mob_data retain set value []

function cartographer_core:amd/purge/rec

data modify storage amd:mob_data storage set from storage amd:mob_data retain

data remove storage amd:mob_data retain