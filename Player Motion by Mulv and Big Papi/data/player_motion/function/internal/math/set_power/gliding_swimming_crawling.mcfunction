#> player_motion:internal/math/set_power/gliding_swimming_crawling
#   Sets variables related to power for when the player is standing
#
# Callers:
#   > player_motion:internal/math/get_power_coefficient

scoreboard players set $divisor player_motion.internal.math 240
scoreboard players set $p_squared player_motion.internal.math 144000000