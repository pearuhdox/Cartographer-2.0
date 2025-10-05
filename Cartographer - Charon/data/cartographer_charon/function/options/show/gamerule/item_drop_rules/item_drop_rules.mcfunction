data modify storage cartographer:charon_options data set value {}
execute store result storage cartographer:charon_options data.always_drop_boxes int 1 run scoreboard players get $always_drop_boxes charon.gmr
execute store result storage cartographer:charon_options data.drop_all_allowed int 1 run scoreboard players get $drop_all_allowed charon.gmr
execute store result storage cartographer:charon_options data.never_drop_hotbar int 1 run scoreboard players get $never_drop_hotbar charon.gmr
execute store result storage cartographer:charon_options data.never_drop_armor int 1 run scoreboard players get $never_drop_armor charon.gmr
execute store result storage cartographer:charon_options data.never_drop_offhand int 1 run scoreboard players get $never_drop_offhand charon.gmr
execute store result storage cartographer:charon_options data.never_drop_backpack int 1 run scoreboard players get $never_drop_backpack charon.gmr

data modify storage cartographer:charon_options data.command set value "function cartographer_charon:options/set_item_drop_rules {always_drop_boxes:$(always_drop_boxes),drop_all_allowed:$(drop_all_allowed),never_drop_hotbar:$(never_drop_hotbar),never_drop_armor:$(never_drop_armor),never_drop_offhand:$(never_drop_offhand),never_drop_backpack:$(never_drop_backpack)}"

function cartographer_charon:options/show/gamerule/item_drop_rules/item_drop_rules_macro with storage cartographer:charon_options data