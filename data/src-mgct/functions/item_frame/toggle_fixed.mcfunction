execute unless data entity @s {Tags: ["src-mgct+item_frame+fixed+modified"]} if data entity @s {Fixed:0b} run data merge entity @s {Fixed:1, Tags: ["src-mgct+item_frame+fixed+modified"]}
execute unless data entity @s {Tags: ["src-mgct+item_frame+fixed+modified"]} if data entity @s {Fixed:1b} run data merge entity @s {Fixed:0, Tags: ["src-mgct+item_frame+fixed+modified"]}

# reset modified tag
data merge entity @s {Tags: []}

# feedback + deselect
tellraw @a[distance=..10] {"text": "🔧 Item frame fixation toggled", "color": "green"}
