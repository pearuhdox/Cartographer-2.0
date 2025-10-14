$scoreboard players set $text_type ca.var $(type)

data modify storage cartographer_core:loreify data set value {}
$data modify storage cartographer_core:loreify data.text set value "$(text)"
$data modify storage cartographer_core:loreify data.key set value "$(key)"
$data modify storage cartographer_core:loreify data.color set value "$(color)"
$data modify storage cartographer_core:loreify data.italics set value $(italics)
$data modify storage cartographer_core:loreify data.underlined set value $(underlined)
$data modify storage cartographer_core:loreify data.bold set value $(bold)

#Run for Text
execute if score $text_type ca.var matches 1 run function ca:add_name/add_section/text with storage cartographer_core:loreify data

#Run for Translate
execute if score $text_type ca.var matches 2 run function ca:add_name/add_section/translate with storage cartographer_core:loreify data

#Run for Keybind
execute if score $text_type ca.var matches 3 run function ca:add_name/add_section/keybind with storage cartographer_core:loreify data

#Put the lore line on the item
function ca:add_name/add_line/branch

dialog clear @s