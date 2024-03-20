# mark item frame with correct action
execute unless data entity @s {NoBasePlate:1b} run tag @s add src-mgct+armor_stand-no_base_plate-enable
execute if data entity @s {NoBasePlate:1b} run tag @s add src-mgct+armor_stand-no_base_plate-disable

# modify fixed nbt tag based on enable/disable tag
execute if data entity @s {Tags: ["src-mgct+armor_stand-no_base_plate-enable"]} run data modify entity @s NoBasePlate set value 1
execute if data entity @s {Tags: ["src-mgct+armor_stand-no_base_plate-disable"]} run data modify entity @s NoBasePlate set value 0

# reset enable/disable tag
tag @s remove src-mgct+armor_stand-no_base_plate-enable
tag @s remove src-mgct+armor_stand-no_base_plate-disable

# feedback
tellraw @a[distance=..10] {"text": "🔧 Base plate toggled", "color": "green"}
playsound minecraft:entity.item_frame.remove_item block @a[distance=..5] ~ ~ ~ 1 1.3