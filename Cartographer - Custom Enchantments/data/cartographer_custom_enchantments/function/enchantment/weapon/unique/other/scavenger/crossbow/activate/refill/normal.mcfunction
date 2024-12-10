data modify storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:charged_projectiles append value {id:"minecraft:arrow",count:1,components:{"minecraft:intangible_projectile":{}}}

execute if score $multishot ca.ench_scavenger_slot matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/crossbow/activate/refill/multishot

playsound minecraft:item.crossbow.loading_end player @a[distance=..16] ~ ~ ~ 1 0.75