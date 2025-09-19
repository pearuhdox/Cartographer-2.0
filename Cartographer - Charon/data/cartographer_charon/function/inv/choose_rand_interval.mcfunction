execute store result score $rng dt.var run random value 1..2147483647
scoreboard players operation $rand_t dt.var = $rng dt.var
scoreboard players operation $rand_t dt.var %= $max_rand_interval dt.var
