execute unless data entity @s {Tags: ["modified"]} if data entity @s {Invisible:0b} run data merge entity @s {Invisible:1, Tags: ["modified"]}
execute unless data entity @s {Tags: ["modified"]} if data entity @s {Invisible:1b} run data merge entity @s {Invisible:0, Tags: ["modified"]}

# reset modified tag
data merge entity @s {Tags: []}

# feedback + deselect
tellraw @a[distance=..10] {"text": "🔧 Item frame invisibility toggled", "color": "green"}
