execute if entity @s[type=player,tag=ovk.player.dead] run function ovk:entity/player/death/respawn
execute if entity @s[type=!player,tag=!ovk.entity.setup,tag=!ovk.entity] run function ovk:entity/mob/setup