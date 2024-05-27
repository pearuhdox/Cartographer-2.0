scoreboard players operation @s ca.heal = @s ca.siphon_heal

scoreboard players set @s ca.siphon_heal 0

function cartographer_core:helper/heal_player/apply_heal

tag @s remove ca.do_siphon_heal