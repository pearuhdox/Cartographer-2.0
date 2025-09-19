#If the mob is not "inactive" - aka a valid despawn target, it explodes
#This means it must not have an inactivity score of 600.. and must have a player within 128 blocks
#If it has the ignited tag, it will also always explode
execute unless score $core.difficulty ca.CONSTANT matches 0 if entity @a[distance=..128] unless score @s ca.inactivity matches 600.. run function #minecraft:cartographer/api/handlers/checkers/creeper_explode

kill @s