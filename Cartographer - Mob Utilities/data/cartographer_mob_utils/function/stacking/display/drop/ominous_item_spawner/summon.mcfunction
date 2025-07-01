data modify entity @s spawn_item_after_ticks set from storage cartographer:mob_utils delay
data modify entity @s item set from storage cartographer:mob_utils item

data modify storage cartographer:mob_utils x set from entity @s Pos[0]
data modify storage cartographer:mob_utils y set from entity @s Pos[1]
data modify storage cartographer:mob_utils z set from entity @s Pos[2]