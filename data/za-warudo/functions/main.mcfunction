scoreboard players add @a warudo-freeze 0
scoreboard players add @a warudo-cooldown 0
scoreboard players add @a warudo-showStand 0
scoreboard players add @a warudo-timeLimit 0
scoreboard players add @a warudo-coolTime 0
scoreboard players enable @a warudo-info
recipe give @a za-warudo:the_world

execute as @a unless score @s warudo-info matches 0 at @s run function za-warudo:info

execute as @a if score @s warudo-timeLimit matches ..39 run scoreboard players set @s warudo-timeLimit 100
execute as @a if score @s warudo-coolTime matches ..39 run scoreboard players set @s warudo-coolTime 1200

execute as @a[nbt={SelectedItem:{id:"minecraft:bat_spawn_egg"}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"⌈ THE WORLD ⌋","color":"gold","bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:1,Warudo:1b} 1
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Warudo:1b}}}] at @s run function za-warudo:show_stand
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Warudo:1b}}}] at @s run kill @e[type=minecraft:armor_stand,name="the_world",limit=1,sort=nearest]
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Warudo:1b}}}] at @s run scoreboard players set @s warudo-showStand 0

execute as @a[scores={warudo-freeze=1}] at @s run function za-warudo:stopped_time
execute as @a unless score @s warudo-freeze matches 1 run function za-warudo:normal_time

execute as @a[scores={warudo-used=1..,warudo-cooldown=0,warudo-freeze=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Warudo:1b}}}] at @s run function za-warudo:on_click
execute as @a[scores={warudo-used=1..,warudo-cooldown=1..,warudo-freeze=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Warudo:1b}}}] run tellraw @s {"text":"⌈ THE WORLD ⌋ is on cooldown!","color":"red"}

scoreboard players remove @a[scores={warudo-used=1..}] warudo-used 1

execute as @a[scores={warudo-timer=30,warudo-freeze=1}] at @s run playsound minecraft:warudo.time_resume master @s
execute as @a if score @s warudo-timer matches 1 at @s run function za-warudo:launch_projectiles
execute as @a if score @s warudo-cooldown matches 1 run tellraw @s {"text":"⌈ THE WORLD ⌋ can be used again!","color":"green"}
execute as @a if score @s warudo-cooldown matches 1 at @s run playsound minecraft:entity.experience_orb.pickup master @s
execute as @a if score @s warudo-cooldown matches ..-1 run scoreboard players set @s warudo-cooldown 0
