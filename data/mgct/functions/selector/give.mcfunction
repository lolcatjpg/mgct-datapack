give @p minecraft:name_tag{display:{Name:'{"text": "🖍 mgct selector", "color": "light_purple", "italic": false}'}, selected:0, selector:1} 64
tellraw @p {"text": "\n🛈 Drop selector at entity to select it", "color": "blue"}
tellraw @s {"text": "[click here to open menu]\n", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function menu-mgct"}}
