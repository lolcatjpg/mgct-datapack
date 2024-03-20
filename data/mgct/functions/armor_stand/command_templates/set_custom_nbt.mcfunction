tellraw @s {"text": "-----", "color": "gray"}
tellraw @s {"text": "Add nbt between {} in command in chat:", "color": "aqua"}
tellraw @s {"text": "... data merge entity @s {§7§o<nbt>§r}\n"}
tellraw @s {"text": "click here to insert command in chat", "italic": true, "underlined": true, "color": "blue", "clickEvent": {"action": "suggest_command", "value": "/execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=minecraft:armor_stand] run data merge entity @s {}"}}
tellraw @s {"text": "-----", "color": "gray"}
