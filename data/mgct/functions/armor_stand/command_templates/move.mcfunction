tellraw @s {"text": "-----", "color": "gray"}
tellraw @s {"text": "Complete the command in chat with distances (in blocks) to move the armor stand:", "color": "aqua"}
tellraw @s {"text": "... tp @s ~§7§o<amount along x-axis>§r ~§7§o<amount along y-axis>§r ~§7§o<amount along z-axis>§r\n"}
tellraw @s {"text": "click here to insert command in chat", "italic": true, "underlined": true, "color": "blue", "clickEvent": {"action": "suggest_command", "value": "/execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=minecraft:armor_stand] positioned as @s run tp @s ~ ~ ~"}}
tellraw @s {"text": "-----", "color": "gray"}
