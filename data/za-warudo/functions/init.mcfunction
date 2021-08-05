scoreboard objectives add warudo-x dummy
scoreboard objectives add warudo-y dummy
scoreboard objectives add warudo-z dummy

scoreboard objectives add warudo-used minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add warudo-freeze dummy
scoreboard objectives add warudo-timer dummy
scoreboard objectives add warudo-cooldown dummy
scoreboard objectives add warudo-showStand dummy

scoreboard objectives add warudo-timeLimit dummy
scoreboard objectives add warudo-coolTime dummy

scoreboard objectives add warudo-info trigger

tellraw @a {"text":"⌈ THE WORLD ⌋ Data Pack made by Keniran","color":"gold","bold":"true"}
tellraw @a [{"text":"■ YOUTUBE: ","color":"gray"},{"text":"youtube.com/channel/UCIUe0MFF61Ic8oWu63wLsgQ","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCIUe0MFF61Ic8oWu63wLsgQ"}}]
tellraw @a [{"text":"■ TWITCH: ","color":"gray"},{"text":"twitch.tv/keniran001","color":"#ab45ff","clickEvent":{"action":"open_url","value":"https://www.twitch.tv/keniran001"}}]
tellraw @a ""
tellraw @a [{"text":"[Click to view Data Pack info]","clickEvent":{"action":"run_command","value":"/trigger warudo-info"}}]
