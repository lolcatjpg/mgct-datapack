tellraw @p [{"text": "\nfunctions for all entities:", "color": "gray"}]

# kill
tellraw @p [{"text": "   "}, {"text": " [❌ kill] ", "color": "red", "clickEvent": {"action": "run_command", "value": "/function src-mgct:all_entities/kill_confirm"}, "hoverEvent": {"action": "show_text", "contents": "Kill entities by teleporting them deep into the void"}}]

# template: custom nbt
tellraw @p [{"text": "   "}, {"text": " [📝 set custom nbt] ", "color": "blue", "clickEvent": {"action": "run_command", "value": "/function mgct:all_entities/command_templates/set_custom_nbt"}, "hoverEvent": {"action": "show_text", "contents": "Command template"}}]

