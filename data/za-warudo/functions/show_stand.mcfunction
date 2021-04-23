execute if score @s warudo-showStand matches 0 at @s run summon armor_stand ^0.4 ^1 ^-1 {Invisible:1b,NoGravity:1b,NoBasePlate:1b,ArmorItems:[{id:leather_boots,Count:1,display:{color:0}},{id:leather_leggings,Count:1,display:{color:0}},{id:leather_chestplate,Count:1,display:{color:0}},{id:leather_helmet,Count:1,display:{color:0}}],CustomName:"\"the_world\""}
execute as @e[type=minecraft:armor_stand,name="the_world"] run data modify entity @s ArmorItems[0].tag.display.color set value 16701501
execute as @e[type=minecraft:armor_stand,name="the_world"] run data modify entity @s ArmorItems[1].tag.display.color set value 16701501
execute as @e[type=minecraft:armor_stand,name="the_world"] run data modify entity @s ArmorItems[2].tag.display.color set value 16701501
execute as @e[type=minecraft:armor_stand,name="the_world"] run data modify entity @s ArmorItems[3].tag.display.color set value 16701501
scoreboard players set @s warudo-showStand 1

tp @e[type=minecraft:armor_stand,name="the_world",limit=1,sort=nearest] ^0.4 ^1 ^-1 ~ ~
