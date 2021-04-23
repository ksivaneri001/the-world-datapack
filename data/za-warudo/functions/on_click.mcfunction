tellraw @s {"text":"Time has stopped","color":"aqua"}
scoreboard players set @s warudo-freeze 1
scoreboard players operation @s warudo-timer = @s warudo-timeLimit

scoreboard players set @a[scores={warudo-freeze=0}] warudo-freeze 2
execute as @a[scores={warudo-freeze=2}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,DisabledSlots:256,CustomName:"\"player_position\""}
