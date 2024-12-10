tag @s remove ca.check_land

tag @s add ca.in_ground
execute on passengers if entity @s[type=marker] run tag @s add ca.in_ground

function #minecraft:cartographer/api/handlers/checkers/projectile_land