execute at @s run function za-warudo:summon_armor_stands

execute as @e run data modify entity @s NoAI set value 1b

gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule doFireTick false
gamerule randomTickSpeed 0

scoreboard players remove @s warudo-timer 1
title @s actionbar [{"text":"Amount of stopped time left: ","color":"dark_purple"},{"score":{"name":"@s","objective":"warudo-timer"}}]

gamemode adventure @a[scores={warudo-freeze=2}]
effect give @a[scores={warudo-freeze=2}] minecraft:weakness 2 2 true
effect give @a[scores={warudo-freeze=2}] minecraft:blindness 2 0 true
effect give @a[scores={warudo-freeze=2}] minecraft:jump_boost 2 150 true
effect give @a[scores={warudo-freeze=2}] minecraft:slowness 2 255 true
effect give @a[scores={warudo-freeze=2}] minecraft:levitation 2 255 true
