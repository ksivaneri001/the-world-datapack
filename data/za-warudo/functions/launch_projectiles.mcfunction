tellraw @a {"text":"Time resumes","color":"red"}
scoreboard players operation @s warudo-cooldown = @s warudo-coolTime

execute as @e[type=minecraft:armor_stand,name="arrow"] at @s run function za-warudo:projectile/arrow
execute as @e[type=minecraft:armor_stand,name="spectral_arrow"] at @s run function za-warudo:projectile/spectral_arrow
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_water"] at @s run function za-warudo:projectile/tipped_arrow_water
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_mundane"] at @s run function za-warudo:projectile/tipped_arrow_mundane
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_thick"] at @s run function za-warudo:projectile/tipped_arrow_thick
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_awkward"] at @s run function za-warudo:projectile/tipped_arrow_awkward
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_night_vision"] at @s run function za-warudo:projectile/tipped_arrow_night_vision
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_invisibility"] at @s run function za-warudo:projectile/tipped_arrow_invisibility
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_leaping"] at @s run function za-warudo:projectile/tipped_arrow_leaping
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_fire_resistance"] at @s run function za-warudo:projectile/tipped_arrow_fire_resistance
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_swiftness"] at @s run function za-warudo:projectile/tipped_arrow_swiftness
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_slowness"] at @s run function za-warudo:projectile/tipped_arrow_slowness
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_water_breathing"] at @s run function za-warudo:projectile/tipped_arrow_water_breathing
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_healing"] at @s run function za-warudo:projectile/tipped_arrow_healing
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_harming"] at @s run function za-warudo:projectile/tipped_arrow_harming
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_poison"] at @s run function za-warudo:projectile/tipped_arrow_poison
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_regeneration"] at @s run function za-warudo:projectile/tipped_arrow_regeneration
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_strength"] at @s run function za-warudo:projectile/tipped_arrow_strength
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_weakness"] at @s run function za-warudo:projectile/tipped_arrow_weakness
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_levitation"] at @s run function za-warudo:projectile/tipped_arrow_levitation
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_luck"] at @s run function za-warudo:projectile/tipped_arrow_luck
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_turtle_master"] at @s run function za-warudo:projectile/tipped_arrow_turtle_master
execute as @e[type=minecraft:armor_stand,name="tipped_arrow_slow_falling"] at @s run function za-warudo:projectile/tipped_arrow_slow_falling
execute as @e[type=minecraft:armor_stand,name="trident"] at @s run function za-warudo:projectile/trident
execute as @e[type=minecraft:armor_stand,name="egg"] at @s run function za-warudo:projectile/egg
execute as @e[type=minecraft:armor_stand,name="snowball"] at @s run function za-warudo:projectile/snowball

kill @e[type=minecraft:armor_stand,name="destination"]

scoreboard players set @s warudo-timer 0
title @s actionbar [{"text":"Amount of stopped time left: ","color":"dark_purple"},{"score":{"name":"@s","objective":"warudo-timer"}}]
scoreboard players set @s warudo-freeze 0
