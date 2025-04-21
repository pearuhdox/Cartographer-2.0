data modify entity @s equipment.mainhand set from storage cartographer_charon:bundle bundle

setblock 271101 1 271101 oak_sign{front_text:{messages:[{"translate":"cartographer.charon.death_drop.display.name","fallback":"%1$s Shade (#%3$s)","color":"#94E1FE","italic":false,"with":[{"translate":"format.grammar.possessive","fallback":"%s\'s","color":"#94E1FE","with":[{"selector":"@p[tag=the_one_dying]","color":"#94E1FE"}]},{"selector":"@p[tag=the_one_dying]","color":"#94E1FE"},{"score":{"name":"@p[tag=the_one_dying]","objective":"charon.death_count"}}]},{"text":""},{"text":""},{"text":""}]}} destroy
data modify entity @s CustomName set from block 271101 1 271101 front_text.messages[0]

setblock 271101 1 271101 oak_sign{front_text:{messages:[{"translate":"cartographer.charon.death_drop.display.tutorial","fallback":"Hold [%s] to\\nrevive %s","color":"white","italic":false,"with":[{"keybind":"key.use","color":"aqua","italic":false},{"selector":"@p[tag=the_one_dying]","color":"#94E1FE","italic":false}]},{"text":""},{"text":""}]}} destroy
execute on passengers if entity @s[tag=ca.charon_shade_text,type=text_display] run data modify entity @s text set from block 271101 1 271101 front_text.messages[0]

tag @s remove new

#$function carto_event:api/create_single_entity_event {event:"shade_behavior/shade_tick",duration:6000,delay:0,parameters:{player:"$(player)"},merge_behavior:"none"}
