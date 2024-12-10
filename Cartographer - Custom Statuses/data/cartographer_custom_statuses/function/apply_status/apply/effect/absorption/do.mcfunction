#Set the cap, but modify it to never exceed the player's max health, regardless
#Anti Slimeking Preventative Measures
$scoreboard players set $cap ca.apply_status_data $(cap)
execute store result score $max_health ca.apply_status_data run attribute @s minecraft:max_health get
scoreboard players operation $cap ca.apply_status_data < $max_health ca.apply_status_data

$scoreboard players set $seconds ca.apply_status_data $(seconds)

scoreboard players set $tick_rate ca.apply_status_data 100

$scoreboard players set $amplifier ca.apply_status_data $(amplifier)

scoreboard players add $amplifier ca.apply_status_data 1

function cartographer_custom_statuses:apply_status/apply/effect/absorption/rec

execute store result storage cartographer:custom_statuses apply[0].tick_rate int 1 run scoreboard players get $tick_rate ca.apply_status_data
execute store result storage cartographer:custom_statuses apply[0].seconds int 1 run scoreboard players get $seconds ca.apply_status_data
function cartographer_custom_statuses:apply_status/apply/effect/absorption/branch with storage cartographer:custom_statuses apply[0]
