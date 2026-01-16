$execute as $(target) at @s run data modify entity @s HasStung set value 0b
$execute as $(target) at @s run data modify entity @s anger_end_time set value 32767

$execute as $(target) at @s run return 1
return 0