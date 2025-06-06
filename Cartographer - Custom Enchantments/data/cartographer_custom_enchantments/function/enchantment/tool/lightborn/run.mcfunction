execute unless score @s ca.lightborn_cooldown matches 0.. run scoreboard players set @s ca.lightborn_cooldown 0

execute store result score @s ca.lightborn_redstone_torch run clear @s redstone_torch[minecraft:enchantments={}] 0
execute store result score @s ca.lightborn_soul_torch run clear @s soul_torch[minecraft:enchantments={}] 0
execute store result score @s ca.lightborn_torch run clear @s torch[minecraft:enchantments={}] 0