scoreboard players operation $total_ct ca.stuck_count = @s ca.stuck_count
scoreboard players operation $total_ct ca.stuck_count += @s ca.fishing_stuck

execute anchored eyes positioned ^ ^ ^ if score @s ca.fishing_stuck matches 1.. run kill @e[type=fishing_bobber,distance=..2,sort=nearest,limit=1]

execute if score $total_ct ca.stuck_count matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ripper/start_damage

scoreboard players set @s ca.stuck_time 1200

playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.75 2
playsound minecraft:entity.armor_stand.break player @a ~ ~ ~ 0.5 2

execute anchored eyes positioned ^ ^ ^ run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0.2 8 normal