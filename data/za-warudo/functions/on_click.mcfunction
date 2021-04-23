tellraw @s {"text":"Time has stopped","color":"aqua"}
scoreboard players set @s warudo-freeze 1
scoreboard players operation @s warudo-timer = @s warudo-timeLimit

scoreboard players set @a[scores={warudo-freeze=0}] warudo-freeze 2
