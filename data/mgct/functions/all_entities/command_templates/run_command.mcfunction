tellraw @s {"text": "-----", "color": "gray"}
tellraw @s {"text": "Append command to run to command in chat:", "color": "aqua"}
tellraw @s {"text": "... at @s run §7§o<command>§r\n"}
tellraw @s {"text": "click here to insert command in chat", "italic": true, "underlined": true, "color": "blue", "clickEvent": {"action": "suggest_command", "value": "/execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=!#mgct:selector_denylist] at @s run "}}
tellraw @s {"text": "-----", "color": "gray"}
