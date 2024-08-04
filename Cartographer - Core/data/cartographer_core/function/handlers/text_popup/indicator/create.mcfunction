execute store result score $popup_val ca.popup_var run random value 1..7


$execute unless score $popup_val_prev ca.popup_var = $popup_val ca.popup_var if score $popup_val ca.popup_var matches 1 rotated ~ 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"$(color)\",\"italic\":false,\"text\":\"$(text)\"}]",popup_duration:25,teleport_duration:2,scale:$(scale),background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}
$execute unless score $popup_val_prev ca.popup_var = $popup_val ca.popup_var if score $popup_val ca.popup_var matches 2 rotated ~15 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"$(color)\",\"italic\":false,\"text\":\"$(text)\"}]",popup_duration:25,teleport_duration:2,scale:$(scale),background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}
$execute unless score $popup_val_prev ca.popup_var = $popup_val ca.popup_var if score $popup_val ca.popup_var matches 3 rotated ~30 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"$(color)\",\"italic\":false,\"text\":\"$(text)\"}]",popup_duration:25,teleport_duration:2,scale:$(scale),background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}
$execute unless score $popup_val_prev ca.popup_var = $popup_val ca.popup_var if score $popup_val ca.popup_var matches 4 rotated ~45 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"$(color)\",\"italic\":false,\"text\":\"$(text)\"}]",popup_duration:25,teleport_duration:2,scale:$(scale),background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}
$execute unless score $popup_val_prev ca.popup_var = $popup_val ca.popup_var if score $popup_val ca.popup_var matches 5 rotated ~-15 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"$(color)\",\"italic\":false,\"text\":\"$(text)\"}]",popup_duration:25,teleport_duration:2,scale:$(scale),background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}
$execute unless score $popup_val_prev ca.popup_var = $popup_val ca.popup_var if score $popup_val ca.popup_var matches 6 rotated ~-30 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"$(color)\",\"italic\":false,\"text\":\"$(text)\"}]",popup_duration:25,teleport_duration:2,scale:$(scale),background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}
$execute unless score $popup_val_prev ca.popup_var = $popup_val ca.popup_var if score $popup_val ca.popup_var matches 7 rotated ~-45 0 positioned ^ ^ ^1.0 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"$(color)\",\"italic\":false,\"text\":\"$(text)\"}]",popup_duration:25,teleport_duration:2,scale:$(scale),background:16777215,text_opacity:170,teleport_position:"~ ~0.35 ~"}

$execute unless score $popup_val_prev ca.popup_var = $popup_val ca.popup_var run scoreboard players remove @s ca.$(buffer_name)_buffer 2

scoreboard players operation $popup_val_prev ca.popup_var = $popup_val ca.popup_var

$execute if score $popup_val_prev ca.popup_var = $popup_val ca.popup_var if score @s ca.$(buffer_name)_buffer matches 2.. positioned ^ ^0.07 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:$(scale),text:"$(text)",color:"$(color)",buffer_name:"$(buffer_name)"}

$execute unless score $popup_val_prev ca.popup_var = $popup_val ca.popup_var if score @s ca.$(buffer_name)_buffer matches 2.. run function cartographer_core:handlers/text_popup/indicator/create {scale:$(scale),text:"$(text)",color:"$(color)",buffer_name:"$(buffer_name)"}