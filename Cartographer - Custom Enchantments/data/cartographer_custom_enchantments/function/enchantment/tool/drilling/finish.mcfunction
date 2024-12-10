tag @s remove ca.drilling_used

execute if entity @s[tag=ca.drilling_proc] run function cartographer_custom_enchantments:enchantment/tool/drilling/identify_block with storage ltos:main data


tag @s remove ca.drilling_proc