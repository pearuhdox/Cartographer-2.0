scoreboard players set $keyword_energized ca.lexica_var 0
scoreboard players set $keyword_splintering ca.lexica_var 0
scoreboard players set $keyword_lethal ca.lexica_var 0
scoreboard players set $keyword_first_blood ca.lexica_var 0
scoreboard players set $keyword_self_movement ca.lexica_var 0
scoreboard players set $keyword_channeled ca.lexica_var 0
scoreboard players set $keyword_randomly ca.lexica_var 0
scoreboard players set $keyword_direct_damage ca.lexica_var 0
scoreboard players set $keyword_direct_attack ca.lexica_var 0
scoreboard players set $keyword_locked ca.lexica_var 0
scoreboard players set $keyword_tool_usage ca.lexica_var 0
scoreboard players set $keyword_dynamic ca.lexica_var 0
scoreboard players set $keyword_stacking ca.lexica_var 0

function cartographer_lexica:lexica/change/describe/get_pages/enchantments

function cartographer_lexica:lexica/change/describe/get_pages/attributes

execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:custom_data.apply_status run function cartographer_lexica:lexica/change/describe/get_pages/statuses

execute if score $has_keyword ca.lexica_var matches 1 run function cartographer_lexica:lexica/change/describe/get_pages/keywords

data modify storage cartographer:lexica item.components.minecraft:custom_data.contents set value []
data modify storage cartographer:lexica item.components.minecraft:custom_data.contents set from storage cartographer:lexica item.components.minecraft:bundle_contents

execute store result score @s ca.lexica_size run data get storage cartographer:lexica item.components.minecraft:custom_data.contents