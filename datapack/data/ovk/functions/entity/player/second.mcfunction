execute if entity @s[scores={ovk.seconds_since_last_hit=1..}] run scoreboard players remove @s ovk.seconds_since_last_hit 1 
execute if entity @s[scores={ovk.seconds_since_last_hit=0}] unless score @s ovk.s.current_health = @s ovk.s.max_health run function ovk:entity/player/stats/health_regen/get

execute if entity @s[scores={ovk.reload.magic=0}] unless score @s ovk.s.current_mana = @s ovk.s.max_mana run function ovk:entity/player/stats/mana_regen/get