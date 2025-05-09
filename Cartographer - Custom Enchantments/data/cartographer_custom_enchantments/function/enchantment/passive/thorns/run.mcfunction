
function carto_event:event/custom_ench/orbit/custom_statuses/check_allow_status

function cartographer_custom_enchantments:enchantment/passive/thorns/hit

execute unless entity @s[type=player] anchored eyes positioned ^ ^ ^ run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#38baac\",\"italic\":false,\"text\":\"Enchant Effect\"},{\"color\":\"#2ce0cc\",\"italic\":false,\"text\":\"\nThorns\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}
