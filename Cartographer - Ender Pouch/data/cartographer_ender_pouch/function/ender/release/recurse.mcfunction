summon item ~ ~ ~ {Glowing:1b,Age:-32768,Health:1000,PickupDelay:20,Tags:["ca.ender_pouch_released_item"],Item:{id:"minecraft:stone_button",components:{item_model:"minecraft:air"},count:1}}

execute as @e[type=item,tag=ca.ender_pouch_released_item,sort=nearest,limit=1] at @s run function cartographer_ender_pouch:ender/release/item_branch with storage cartographer:ender_pouch

$data remove storage cartographer:ender_pouch pocketed.$(player)[0]

scoreboard players set $did_ender_release ca.pouch_var 1

$execute if data storage cartographer:ender_pouch pocketed.$(player)[0] run function cartographer_ender_pouch:ender/release/recurse with storage cartographer:ender_pouch