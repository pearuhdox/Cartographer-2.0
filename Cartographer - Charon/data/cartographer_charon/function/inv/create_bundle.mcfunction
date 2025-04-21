data modify storage cartographer_charon:bundle bundle set value {}
data modify storage cartographer_charon:bundle bundle set value {id:"minecraft:bundle",count:1,components:{"minecraft:custom_data":{DeathBundle:1b,XpStored:0}}}

execute store result score $tc dt.var if data entity 00000001-0000-0007-0000-001b0000000b Offers.Recipes[]
scoreboard players add $tc dt.var 1

setblock 271101 1 271101 oak_sign{front_text:{messages:[{"translate":"cartographer.charon.death_drop.bundle","fallback":"%1$s Valuables (#%3$s)","color":"#6135F2","italic":false,"with":[{"translate":"format.grammar.possessive","fallback":"%s\'s","color":"#6135F2","with":[{"selector":"@p[tag=the_one_dying]","color":"#6135F2"}]},{"selector":"@p[tag=the_one_dying]","color":"#6135F2"},{"score":{"name":"@p[tag=the_one_dying]","objective":"charon.death_count"}}]},{"text":""},{"text":""},{"text":""}]}} destroy
data modify storage cartographer_charon:bundle bundle.components.minecraft:custom_name set from block 271101 1 271101 front_text.messages[0]