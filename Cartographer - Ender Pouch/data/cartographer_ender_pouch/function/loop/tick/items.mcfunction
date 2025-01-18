execute unless entity @s[tag=pouches.check] if data entity @s Item.tag.IsMaterial run tag @s add pouches.material

execute unless entity @s[tag=pouches.check] if data entity @s Item.tag.MaterialsPouch run data modify entity @s Owner set from entity @p[distance=..3] UUID

tag @s add pouches.check

execute if entity @s[tag=pouches.material] run function pouches:items/materials