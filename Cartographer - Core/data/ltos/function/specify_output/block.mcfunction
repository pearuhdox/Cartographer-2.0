#writing data from item into storage
data modify storage ltos:main data set from entity @s Item.components.minecraft:custom_data

#getting uuid
data modify storage ltos:main gu.UUID set value "none"
data modify storage ltos:main macro set value {destroyer:"-"}
execute if data storage ltos:main data.destroyer_uuid run data modify storage ltos:main gu.UUID set from storage ltos:main data.destroyer_uuid
execute if data storage ltos:main data.destroyer_owner_uuid run data modify storage ltos:main gu.UUID set from storage ltos:main data.destroyer_owner_uuid
execute if data storage ltos:main gu.UUID[0] run function gu:convert with storage ltos:main gu
execute if data storage ltos:main gu.UUID[0] run data modify storage ltos:main macro.destroyer set from storage gu:main out

#running tag as entity
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function #ltos:block_broken with storage ltos:main macro

#terminating item
kill @s