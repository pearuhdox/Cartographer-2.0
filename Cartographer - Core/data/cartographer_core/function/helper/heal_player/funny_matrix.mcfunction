# var1 is my health reduction value
# var2 is my health scalar which I have to grab from all of the items the player is wearing plus the player modifiers

$data modify entity 91bb5-0-0-0-ffff transformation set value [0f,0f,0f,$(var1)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(var2)f]
data modify storage central:heal amount.x set from entity 91bb5-0-0-0-ffff transformation.translation[0]