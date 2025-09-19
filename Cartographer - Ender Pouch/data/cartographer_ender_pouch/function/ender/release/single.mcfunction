summon item ~ ~ ~ {Glowing:1b,Age:-32768,Health:1000,PickupDelay:20,Tags:["ca.ender_pouch_released_item"],Item:{id:"minecraft:stone_button",count:1}}

execute as @e[type=item,tag=ca.ender_pouch_released_item,sort=nearest,limit=1] at @s run function cartographer_ender_pouch:ender/release/item_branch with storage cartographer:ender_pouch

$data remove storage cartographer:ender_pouch pocketed.$(player)[0]

playsound minecraft:block.ender_chest.open block @a[distance=..12] ~ ~ ~ 0.75 1.2