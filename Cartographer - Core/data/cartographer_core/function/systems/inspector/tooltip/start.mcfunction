playsound minecraft:item.book.page_turn player @s ~ ~ ~ 0.8 0.75
playsound minecraft:ui.cartography_table.take_result player @s ~ ~ ~ 0.9 1.5
playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 0.8 0.75

scoreboard players set @s ca.glass_cdl 2

data modify storage cartographer_core:inspector lore set value []

scoreboard players set $inspector_ench ca.inspect_var 0
scoreboard players set $inspector_apply_s ca.inspect_var 0
scoreboard players set $inspector_custom_s ca.inspect_var 0

execute if data storage cartographer_core:inspector itr.components.minecraft:custom_data.CustomEnchantments[0] run scoreboard players set $inspector_ench ca.inspect_var 1
execute if data storage cartographer_core:inspector itr.components.minecraft:custom_data.apply_status[0] run scoreboard players set $inspector_apply_s ca.inspect_var 1
execute if data storage cartographer_core:inspector itr.components.minecraft:custom_data.custom_statuses[0] run scoreboard players set $inspector_custom_s ca.inspect_var 1
execute if data storage cartographer_core:inspector itr.components.minecraft:custom_data.CustomAttributes[0] run scoreboard players set $inspector_attr ca.inspect_var 1


execute if score $inspector_ench ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"fallback":"Enchantments: ","translate":"cartographer.systems.inspector_desc.enchantments","color":"gray","italic":false}'
execute if score $inspector_ench ca.inspect_var matches 1.. run function cartographer_core:systems/inspector/tooltip/enchantments/recurse

execute if score $inspector_ench ca.inspect_var matches 1.. if score $inspector_attr ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"text":" "}'

execute if score $inspector_attr ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"fallback":"Attributes: ","translate":"cartographer.systems.inspector_desc.attributes","color":"gray","italic":false}'
execute if score $inspector_attr ca.inspect_var matches 1.. run function cartographer_core:systems/inspector/tooltip/attributes/recurse

execute if score $inspector_ench ca.inspect_var matches 1.. if score $inspector_apply_s ca.inspect_var matches 1.. unless score $inspector_custom_s ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"text":" "}'
execute if score $inspector_ench ca.inspect_var matches 1.. unless score $inspector_apply_s ca.inspect_var matches 1.. if score $inspector_custom_s ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"text":" "}'
execute if score $inspector_ench ca.inspect_var matches 1.. if score $inspector_apply_s ca.inspect_var matches 1.. if score $inspector_custom_s ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"text":" "}'

execute unless score $inspector_ench ca.inspect_var matches 1.. if score $inspector_attr ca.inspect_var matches 1.. if score $inspector_apply_s ca.inspect_var matches 1.. unless score $inspector_custom_s ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"text":" "}'
execute unless score $inspector_ench ca.inspect_var matches 1.. if score $inspector_attr ca.inspect_var matches 1.. unless score $inspector_apply_s ca.inspect_var matches 1.. if score $inspector_custom_s ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"text":" "}'
execute unless score $inspector_ench ca.inspect_var matches 1.. if score $inspector_attr ca.inspect_var matches 1.. if score $inspector_apply_s ca.inspect_var matches 1.. if score $inspector_custom_s ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"text":" "}'

execute if score $inspector_apply_s ca.inspect_var matches 1.. unless score $inspector_custom_s ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"fallback":"Afflictions: ","translate":"cartographer.systems.inspector_desc.statuses","color":"gray","italic":false}'
execute unless score $inspector_apply_s ca.inspect_var matches 1.. if score $inspector_custom_s ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"fallback":"Afflictions: ","translate":"cartographer.systems.inspector_desc.statuses","color":"gray","italic":false}'
execute if score $inspector_apply_s ca.inspect_var matches 1.. if score $inspector_custom_s ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"fallback":"Afflictions: ","translate":"cartographer.systems.inspector_desc.statuses","color":"gray","italic":false}'

execute if score $inspector_apply_s ca.inspect_var matches 1.. run function cartographer_core:systems/inspector/tooltip/apply_status/recurse
execute if score $inspector_custom_s ca.inspect_var matches 1.. run function cartographer_core:systems/inspector/tooltip/custom_statuses/recurse

function #minecraft:cartographer/api/systems/inspector/scan_extra

scoreboard players set $inspector_empty ca.inspect_var 0
execute unless data storage cartographer_core:inspector lore[0] run scoreboard players set $inspector_empty ca.inspect_var 1

execute if score $inspector_empty ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"fallback":"Nothing to learn from this...","translate":"cartographer.systems.inspector_desc.empty","color":"gray","italic":false}'

execute if score $inspector_empty ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"text":" "}'
execute if score $inspector_empty ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"fallback":"A mysterious artifact that contains","translate":"cartographer.systems.inspector_desc.lore.1","color":"#B4A68B","italic":true}'
execute if score $inspector_empty ca.inspect_var matches 1.. run data modify storage cartographer_core:inspector lore append value '{"fallback":"a near endless amount of knowledge.","translate":"cartographer.systems.inspector_desc.lore.2","color":"#B4A68B","italic":true}'
