execute unless data entity @s {Tags: ["modified"]} if data entity @s {Fixed:0b} run data merge entity @s {Fixed:1, Tags: ["modified"]}
execute unless data entity @s {Tags: ["modified"]} if data entity @s {Fixed:1b} run data merge entity @s {Fixed:0, Tags: ["modified"]}

# reset modified tag
data merge entity @s {Tags: []}

# feedback + deselect
tellraw @a[distance=..10] {"text": "🔧 Item frame fixation toggled", "color": "green"}
