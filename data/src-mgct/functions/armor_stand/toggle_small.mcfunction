# mark item frame with correct action
execute unless data entity @s {Small:1b} run tag @s add src-mgct+armor_stand-small-enable
execute if data entity @s {Small:1b} run tag @s add src-mgct+armor_stand-small-disable

# modify nbt tag based on enable/disable tag
execute if data entity @s {Tags: ["src-mgct+armor_stand-small-enable"]} run data modify entity @s Small set value 1
execute if data entity @s {Tags: ["src-mgct+armor_stand-small-disable"]} run data modify entity @s Small set value 0

# reset enable/disable tag
tag @s remove src-mgct+armor_stand-small-enable
tag @s remove src-mgct+armor_stand-small-disable

# feedback
tellraw @a[distance=..10] {"text": "🔧 Small toggled", "color": "green"}
playsound minecraft:entity.item_frame.remove_item block @a[distance=..5] ~ ~ ~ 1 1.3