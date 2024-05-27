
execute as @e[type=item_frame,distance=..8,tag=!dies.new_item,nbt={Item:{components:{"minecraft:custom_data":{new_dies_item:1b}}}}] at @s run function dies:func/new_item/new_frame
