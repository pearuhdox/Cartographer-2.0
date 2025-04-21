execute unless items entity @s armor.head * run item replace entity @s armor.head with minecraft:stone_button[minecraft:enchantments={"cartographer_custom_statuses:evocation_blocker":1}]
execute if items entity @s armor.head * run item modify entity @s armor.head cartographer_custom_statuses:add_evocation_blocker
