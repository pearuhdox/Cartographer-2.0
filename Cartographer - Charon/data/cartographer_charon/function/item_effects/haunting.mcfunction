summon item 4206900 256 4206900 {Tags:["ca.haunt_item_charon","ca.new"],Age:-32767,NoGravity:1b,PickupDelay:200,Item:{id:"minecraft:stone"}}

data modify storage cartographer_charon:player uuid set value {}
data modify storage cartographer_charon:player uuid set from entity @s UUID

execute as @e[type=item,limit=1,sort=nearest,tag=ca.new,tag=ca.haunt_item_charon] at @s run function cartographer_charon:item_effects/haunting_branch


data modify storage cartographer_charon:player temp.id set value "minecraft:air"

scoreboard players set $rand_t dt.var 2 