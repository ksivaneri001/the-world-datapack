execute as @s at @s run summon minecraft:armor_stand ^ ^ ^1 {Invisible:1b,NoGravity:1b,Small:1b,CustomName:"\"destination\""}
execute store result score @s warudo-x run data get entity @s Pos[0] 10
execute store result score @s warudo-y run data get entity @s Pos[1] 10
execute store result score @s warudo-z run data get entity @s Pos[2] 10
execute as @e[type=minecraft:armor_stand,name="destination",limit=1,sort=nearest] store result score @s warudo-x run data get entity @s Pos[0] 10
execute as @e[type=minecraft:armor_stand,name="destination",limit=1,sort=nearest] store result score @s warudo-y run data get entity @s Pos[1] 10
execute as @e[type=minecraft:armor_stand,name="destination",limit=1,sort=nearest] store result score @s warudo-z run data get entity @s Pos[2] 10
scoreboard players operation @e[type=minecraft:armor_stand,name="destination",limit=1,sort=nearest] warudo-x -= @s warudo-x
scoreboard players operation @e[type=minecraft:armor_stand,name="destination",limit=1,sort=nearest] warudo-y -= @s warudo-y
scoreboard players operation @e[type=minecraft:armor_stand,name="destination",limit=1,sort=nearest] warudo-z -= @s warudo-z
execute at @s run summon minecraft:arrow ~ ~1 ~ {Potion:"minecraft:luck"}
execute as @e[type=#minecraft:arrows,limit=1,sort=nearest] at @s run tp @s ~ ~-0.5 ~ ~ ~
execute store result entity @e[type=#minecraft:arrows,limit=1,sort=nearest] Motion[0] double 0.4 at @s run scoreboard players get @e[type=minecraft:armor_stand,name="destination",limit=1,sort=nearest] warudo-x
execute store result entity @e[type=#minecraft:arrows,limit=1,sort=nearest] Motion[1] double 0.4 at @s run scoreboard players get @e[type=minecraft:armor_stand,name="destination",limit=1,sort=nearest] warudo-y
execute store result entity @e[type=#minecraft:arrows,limit=1,sort=nearest] Motion[2] double 0.4 at @s run scoreboard players get @e[type=minecraft:armor_stand,name="destination",limit=1,sort=nearest] warudo-z
kill @s
