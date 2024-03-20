tellraw @s {"text": "-----", "color": "gray"}
tellraw @p [{"text": "kill selected entities?", "color": "gold"}]
tellraw @p [{"text": "click to confirm", "color": "red", "underlined": true, "clickEvent": {"action": "run_command", "value": "/function mgct:all_entities/kill"}}]
tellraw @s {"text": "-----", "color": "gray"}