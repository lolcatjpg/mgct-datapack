tellraw @s {"text": "-----", "color": "gray"}
tellraw @s {"text": "Replace <name> in command in chat with custom name:", "color": "aqua"}
tellraw @s {"text": "... set value '{\"text\": \"§7§o<name>§r\"}'\n"}
tellraw @s {"text": "click here to insert command in chat", "italic": true, "underlined": true, "color": "blue", "clickEvent": {"action": "suggest_command", "value": "/execute as @e[tag=src-mgct+selected, distance=..5] run data modify entity @s CustomName set value '{\"text\": \"<name>\"}'"}}
tellraw @s {"text": "Note: some entities' custom name aren't visible while they're selected.", "color": "gray", "italic": true}
tellraw @s {"text": "-----", "color": "gray"}
