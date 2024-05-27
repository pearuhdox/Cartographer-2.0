#writing data from item into storage
data modify storage ltos:main data set from entity @s Item.components.minecraft:custom_data

#macro data init
data modify storage ltos:main macro set value {killer:"-",killed:"-"}

#getting killed entity uuid
data modify storage ltos:main gu.UUID set from storage ltos:main data.entity_uuid
function gu:convert with storage ltos:main gu
data modify storage ltos:main macro.killed set from storage gu:main out

#getting killer uuid
data modify storage ltos:main gu.UUID set value "none"
execute if data storage ltos:main data.killer_uuid run data modify storage ltos:main gu.UUID set from storage ltos:main data.killer_uuid
execute if data storage ltos:main data.killer_owner_uuid run data modify storage ltos:main gu.UUID set from storage ltos:main data.killer_owner_uuid
execute if data storage ltos:main gu.UUID[0] run function gu:convert with storage ltos:main gu
execute if data storage ltos:main gu.UUID[0] run data modify storage ltos:main macro.killer set from storage gu:main out

#running tag
function #ltos:entity_killed with storage ltos:main macro

#terminating item
kill @s