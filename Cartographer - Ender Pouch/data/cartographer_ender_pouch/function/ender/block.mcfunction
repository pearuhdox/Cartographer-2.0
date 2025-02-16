summon item ~ ~ ~ {Glowing:1b,Age:-32768,Health:1000,PickupDelay:2,Tags:["ca.ender_pouch_blocked_item"],Item:{id:"minecraft:stone_button",count:1}}

execute as @e[type=item,tag=ca.ender_pouch_blocked_item,sort=nearest,limit=1] at @s run function cartographer_ender_pouch:ender/block_branch

tellraw @s {"translate":"cartographer.ender_pouch.reject","fallback":"This item cannot be sent to the Ender Pouch pocket dimension!","color":"red","italic":false}

scoreboard players set $pocket_block ca.pouch_var 1
