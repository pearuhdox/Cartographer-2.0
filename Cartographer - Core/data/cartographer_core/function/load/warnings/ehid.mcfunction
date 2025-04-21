########################################
# File: Cartographer Core - Entity Hit Detection - Load Message
#
# Author: PearUhDox | Date: 3/8/2021
#
# Description: Added load message for Gibbsly's entity hit detection system so Cartographer can verify its installation.
########################################

tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"[!WARNING!]","color":"#BF0000","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":" Entity Hit Detection not found!","color":"#FFE0A3","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}}]
#tellraw @s {"text":"If you are using Gibbsly's stand alone version, you may ignore this warning.","color":"red","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}}
#tellraw @s {"text":"If not, install it! Cartographer will fail to work properly without it!","color":"red","hover_event":{"action":"show_text","value":[{"text":"","color":"#FFE0A3","italic":true}]}}
