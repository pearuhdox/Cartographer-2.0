execute unless score @s ca.charon_statue_ct matches 2.. run playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 10 0.75 1
execute unless score @s ca.charon_statue_ct matches 2.. run playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 10 0.75 1
execute unless score @s ca.charon_statue_ct matches 2.. run playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 10 0.75 1
execute unless score @s ca.charon_statue_ct matches 2.. run playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 10 0.75 1
execute unless score @s ca.charon_statue_ct matches 2.. run playsound minecraft:item.axe.wax_off player @a[distance=..12] ~ ~ ~ 10 0.75 1

title @a[distance=..8] actionbar {"translate":"cartographer.charon.respawnable.set_spawn","fallback":"Your spawnpoint has been moved!","color":"dark_aqua","italic":false}

scoreboard players set @a[distance=..8] ca.charon_statue_cdl 60

particle minecraft:glow ~ ~0.8 ~ 0.25 0.3 0.25 5 30 normal

effect give @s glowing 2 0