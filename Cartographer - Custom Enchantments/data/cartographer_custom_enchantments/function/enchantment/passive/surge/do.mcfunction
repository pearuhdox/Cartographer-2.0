scoreboard players set @s ca.raycast 10
execute anchored feet positioned ^ ^0.65 ^0.5 rotated ~ 0 run function cartographer_custom_enchantments:enchantment/passive/surge/ground_rec

execute unless entity @s[type=player] rotated ~ ~ run tp @e[type=text_display,limit=1,sort=nearest,tag=ca.surge_telegraphing] ~ ~ ~ ~ 0
execute unless entity @s[tag=ca.surge_inactive] unless entity @s[type=player] if score @s ca.sprint_time_surge matches 6 as @e[type=text_display,limit=1,sort=nearest,tag=ca.surge_telegraphing] at @s run function cartographer_custom_enchantments:enchantment/passive/surge/telegraph_animation