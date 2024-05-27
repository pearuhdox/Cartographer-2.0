data modify entity 12201519-0000-0000-0000-000000000001 Tags set from storage ltos:main data.entity_tags

execute as 12201519-0000-0000-0000-000000000001 if entity @s[tag=ca.collector] run function cartographer_charon:collector/find_dropped_bag_branch

data modify entity 12201519-0000-0000-0000-000000000001 Tags set value []