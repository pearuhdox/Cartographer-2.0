data modify entity @s item.components.minecraft:custom_data.DeathBundle set from storage cartographer_charon:bundle bundle
tag @s remove new

execute on passengers if entity @s[type=text_display] run data modify entity @s text set from storage cartographer_charon:bundle bundle.components.minecraft:custom_name

team join CharonCageVisual @s