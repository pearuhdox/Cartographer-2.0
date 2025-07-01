$execute positioned ~-$(half_size) ~ ~-$(half_size) as @a[dx=0,dy=0,dz=0,sort=nearest,limit=1] positioned ~-$(missing_size) ~ ~-$(missing_size) as @a[dx=0,dy=0,dz=0,sort=nearest,limit=1] run tag @s add ca.spider_hit

$damage @a[tag=ca.spider_hit,limit=1,sort=nearest] $(damage) mob_attack by @s
execute if entity @s[type=cave_spider,tag=!ca.no_effects] if score $core.difficulty ca.CONSTANT matches 2 run effect give @a[tag=ca.spider_hit] poison 7 0
execute if entity @s[type=cave_spider,tag=!ca.no_effects] if score $core.difficulty ca.CONSTANT matches 3 run effect give @a[tag=ca.spider_hit] poison 15 0
tag @a remove ca.spider_hit
