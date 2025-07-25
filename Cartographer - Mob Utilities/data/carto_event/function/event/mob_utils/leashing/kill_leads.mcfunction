execute at @p[tag=ca.remove_lead] as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:lead"}}] at @s run kill @s
tag @a remove ca.remove_lead