# mark item frame with correct action
execute if data entity @s {Fixed:0b} run tag @s add src-mgct+item_frame-fixed-enable
execute if data entity @s {Fixed:1b} run tag @s add src-mgct+item_frame-fixed-disable

# modify fixed nbt tag based on enable/disable tag
execute if data entity @s {Tags: ["src-mgct+item_frame-fixed-enable"]} run data modify entity @s Fixed set value 1
execute if data entity @s {Tags: ["src-mgct+item_frame-fixed-disable"]} run data modify entity @s Fixed set value 0

# reset enable/disable tag
tag @s remove src-mgct+item_frame-fixed-enable
tag @s remove src-mgct+item_frame-fixed-disable

# feedback
tellraw @a[distance=..10] {"text": "🔧 Fixation toggled", "color": "green"}
playsound minecraft:entity.item_frame.remove_item block @a[distance=..5] ~ ~ ~ 1 1.3