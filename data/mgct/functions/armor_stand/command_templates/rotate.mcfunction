tellraw @s {"text": "-----", "color": "gray"}
tellraw @s {"text": "Complete the command in chat with angle (in degrees) to rotate the armour stand:", "color": "aqua"}
tellraw @s {"text": "... tp @s ~ ~ ~ ~§7§o<angle>§r ~\n"}
tellraw @s {"text": "click here to insert command in chat", "italic": true, "underlined": true, "color": "blue", "clickEvent": {"action": "suggest_command", "value": "/execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=minecraft:armor_stand] at @s run tp @s ~ ~ ~ ~ ~"}}
tellraw @s {"text": "-----", "color": "gray"}
