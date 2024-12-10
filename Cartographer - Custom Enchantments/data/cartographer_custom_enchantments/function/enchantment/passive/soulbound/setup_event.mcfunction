data modify entity @s NoGravity set value 1b
data modify entity @s Glowing set value 1b
data modify entity @s PickupDelay set value 0
data modify entity @s Age set value -32768

tp @s 4206900 256 4206900

data modify storage cartographer_custom_enchantments:death_macro UUID set value []
data modify storage cartographer_custom_enchantments:death_macro UUID set from entity @s Thrower

data modify storage gu:main out set value "-"
function gu:convert with storage cartographer_custom_enchantments:death_macro
data modify storage cartographer:custom_enchantments owner set from storage gu:main out

function cartographer_custom_enchantments:enchantment/passive/soulbound/macro with storage cartographer:custom_enchantments