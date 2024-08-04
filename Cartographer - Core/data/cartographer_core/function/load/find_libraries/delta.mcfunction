kill 31045120-0000-0000-0000-000000000000
summon armor_stand 4206900 0 4206900 {NoGravity:1b,UUID:[I;822366496,0,0,0],HandItems:[{id:"minecraft:leather_helmet",count:1,components:{enchantments:{levels:{"minecraft:blast_protection":1}}}},{}]}

execute store success score $#lib_del ca.installed run item modify entity 31045120-0000-0000-0000-000000000000 weapon.mainhand player_motion:blastprot/remove

kill 31045120-0000-0000-0000-000000000000