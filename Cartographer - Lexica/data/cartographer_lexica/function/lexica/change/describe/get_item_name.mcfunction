setblock 4206905 3 4206905 air replace
setblock 4206905 3 4206905 oak_sign{front_text:{messages:[[{color:"#79A4C9",fallback:"Current Item: ",italic:false,translate:"cartographer.lexica.lore.inspect_1"},{nbt:"visual",storage:"cartographer:lexica","interpret":true}],{text:""},{text:""},{text:""}]}} replace

data modify storage cartographer:lexica return set from block 4206905 3 4206905 front_text.messages[0]