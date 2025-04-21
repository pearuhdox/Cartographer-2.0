########################################
# File: Cartographer Core - BBL Missing Warning
#
# Author: PearUhDox | Date: 1/11/2022
#
# Description: Warns of a faulty installation in case the library is missing.
########################################

tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"[!WARNING!]","color":"#BF0000","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":" Bookshelf not found!","color":"#FFE0A3","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}}]
#tellraw @s {"text":"If you are using RockNRed's stand alone version, you may ignore this warning.","color":"red","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}}
#tellraw @s {"text":"If not, install it! Cartographer will fail to work properly without it!","color":"red","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}}