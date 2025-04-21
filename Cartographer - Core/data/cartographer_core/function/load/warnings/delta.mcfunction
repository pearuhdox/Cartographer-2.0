########################################
# File: Cartographer Core - Delta Warning
#
# Author: PearUhDox | Date: 7/24/2022
#
# Description: Warns of a faulty installation in case the library is missing.
########################################

tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"[!WARNING!]","color":"#BF0000","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":" Player Motion not found!","color":"#FFE0A3","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}}]
#tellraw @s {"text":"If you are using BigPapi's stand alone [Non-Resourcepack] version, you may ignore this warning.","color":"red","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}}
#tellraw @s {"text":"If not, install it! Cartographer will fail to work properly without it!","color":"red","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}}
