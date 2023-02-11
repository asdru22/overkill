execute store result score $deathmessages ovk.data run gamerule showDeathMessages
execute if score $deathmessages ovk.data matches 1 run function ovk:entity/player/stats/health/death_messages
