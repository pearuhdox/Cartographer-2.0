#summon item with bundle slot data
summon item ~ ~1 ~ {Tags:["bundle_item","not_init","ca.registered"],PickupDelay:5,Item:{id:"minecraft:barrier",count:1}}
execute as @e[type=item,tag=bundle_item,tag=not_init,limit=1,sort=nearest] run function cartographer_charon:bundle/unbundle_branch

#pop
data remove storage cartographer_charon:player temp.components.minecraft:custom_data.DeathBundleContents[0]

#looping
execute if data storage cartographer_charon:player temp.components.minecraft:custom_data.DeathBundleContents[0] run function cartographer_charon:bundle/rec_unbundle