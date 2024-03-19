tellraw @p [{"text": "\n======== mgct menu ========"}]

execute if entity @e[type=#mgct:group/item_frame, distance=..5, tag=src-mgct+selected] run function mgct:menu/item_frame

execute unless entity @e[tag=src-mgct+selected, distance=..5] run tellraw @p [{"text": "\nnothing selected within 5 block range...", "color": "red", "italic": true}]

tellraw @p [{"text": "\n==========================\n"}]
