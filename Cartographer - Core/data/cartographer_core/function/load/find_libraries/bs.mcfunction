scoreboard players set $#lib_bs ca.installed 0
execute positioned 0 0 0 if predicate bs.biome:has_precipitation run scoreboard players set $#lib_bs ca.installed 1
execute positioned 0 0 0 unless predicate bs.biome:has_precipitation run scoreboard players set $#lib_bs ca.installed 1