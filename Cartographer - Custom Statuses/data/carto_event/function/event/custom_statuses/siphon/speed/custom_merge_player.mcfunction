#Check if old and new player are the same, if they are, old player will have a score of 2
#When we have a score of 2, aka players match, we want to remove the old buff and add in the new one.
#When they are different, we want to time out the first player's buff but also reassign ownership to the new player.
$scoreboard players set $(old_player) ca.siphon_player_test 0
$scoreboard players set $(new_player) ca.siphon_player_test 0

$scoreboard players add $(old_player) ca.siphon_player_test 1
$scoreboard players add $(new_player) ca.siphon_player_test 1

$execute as $(old_player) at @s if score @s ca.siphon_player_test matches 2.. run scoreboard players operation @s ca.siphon_speed_player -= $effect_old_amt ca.status_var
$scoreboard players operation $(new_player) ca.siphon_speed_player += $effect_new_amt ca.status_var