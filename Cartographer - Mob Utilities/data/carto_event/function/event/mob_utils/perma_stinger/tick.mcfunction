$execute as $(target) at @s run data modify entity @s HasStung set value 0b
$execute as $(target) at @s run data modify entity @s AngerTime set value 32767s

$execute as $(target) at @s run return 1
return 0