$execute facing $(x) $(y) $(z) run tp @s ~ ~ ~ ~ ~

data merge entity @s {teleport_duration:5,interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[0.0f,0.0f,0.0f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1531992372,-1711652292,-1328723893,-1398033354],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzc3ZDRhMjA2ZDc3NTdmNDc5ZjMzMmVjMWEyYmJiZWU1N2NlZjk3NTY4ZGQ4OGRmODFmNDg2NGFlZTdkM2Q5OCJ9fX0="}]}}}}

function carto_event:event/custom_ench/ambushing/custom_skin/directory

data modify storage gu:main out set value "-"
function gu:generate
data modify storage carto_event current[-1].parameters.traveler set from storage gu:main out

$execute as $(target) if entity @s[gamemode=survival] run data modify storage carto_event current[-1].parameters.previous_gamemode set value "survival"
$execute as $(target) if entity @s[gamemode=creative] run data modify storage carto_event current[-1].parameters.previous_gamemode set value "creative"
$execute as $(target) if entity @s[gamemode=adventure] run data modify storage carto_event current[-1].parameters.previous_gamemode set value "adventure"