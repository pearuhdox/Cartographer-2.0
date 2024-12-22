execute if entity @s[nbt={HurtTime:0s}] run playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 1 1
$damage @s $(damage) minecraft:player_attack by $(target)

function cartographer_custom_statuses:apply_status/apply/set_target
execute if score $allow_statuses_target ca.ench_lunging_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/custom_statuses/status_target
