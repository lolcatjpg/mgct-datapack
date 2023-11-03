execute unless data entity @s {Tags: ["src-mgct+item_frame+invisible+modified"]} if data entity @s {Invisible:0b} run data merge entity @s {Invisible:1, Tags: ["src-mgct+item_frame+invisible+modified"]}
execute unless data entity @s {Tags: ["src-mgct+item_frame+invisible+modified"]} if data entity @s {Invisible:1b} run data merge entity @s {Invisible:0, Tags: ["src-mgct+item_frame+invisible+modified"]}

# reset modified tag
data merge entity @s {Tags: []}

# feedback + deselect
tellraw @a[distance=..10] {"text": "🔧 Item frame invisibility toggled", "color": "green"}
