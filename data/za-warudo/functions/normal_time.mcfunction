scoreboard players set @a warudo-freeze 0
scoreboard players set @a warudo-timer 0
scoreboard players remove @a[scores={warudo-cooldown=1..}] warudo-cooldown 1

execute as @e[nbt={NoAI:1b}] run data modify entity @s NoAI set value 0b

gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doMobSpawning true
gamerule doFireTick true
gamerule randomTickSpeed 3

scoreboard players set @a warudo-freeze 0

gamemode survival @a[gamemode=adventure]
