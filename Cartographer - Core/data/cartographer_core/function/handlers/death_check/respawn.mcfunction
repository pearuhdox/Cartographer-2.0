function #minecraft:cartographer/api/handlers/death_check/respawn

execute unless items entity @s armor.body * run function cartographer_core:handlers/body_armor_handler/add_default

function cartographer_core:loop/player/break_item
function cartographer_core:inventory_changed