tellraw @s ""
tellraw @s {"text":"Data Pack Information","bold":"true"}
tellraw @s {"text":"■ [THE WORLD] can be obtained in vanilla survival either by finding it in a desert pyramid or by crafting it (Recipe in crafting book)","color":"gray"}
tellraw @s [{"text":"■ It can also be obtained with cheats by using the command ","color":"gray"},{"text":"/give @s bat_spawn_egg","color":"white"}]
tellraw @s [{"text":"■ The duration of the time stop effect (in ticks) can be set with the command ","color":"gray"},{"text":"/scoreboard players set @s warudo-timeLimit [Any integer above 39]","color":"white"}]
tellraw @s [{"text":"■ The cooldown time between uses (in ticks) can be set with the command ","color":"gray"},{"text":"/scoreboard players set @s warudo-coolTime [Any integer above 39]","color":"white"}]
tellraw @s {"text":"■ FYI 20 ticks = 1 second","color":"gray"}
tellraw @s [{"text":"■ To view this again, use the command ","color":"gray"},{"text":"/trigger warudo-info","color":"white"}]
tellraw @s {"text":"Version 1.0","color":"gold"}

scoreboard players set @s warudo-info 0
