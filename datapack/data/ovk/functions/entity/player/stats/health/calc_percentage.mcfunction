execute if score @s ovk.s.current_health > @s ovk.s.max_health run scoreboard players operation @s ovk.s.current_health = @s ovk.s.max_health

scoreboard players operation $health% ovk.data = @s ovk.s.current_health
scoreboard players operation $health% ovk.data *= 100 ovk.data 
scoreboard players operation $health% ovk.data /= @s ovk.s.max_health

execute if score $health% ovk.data matches ..0 run function ovk:entity/player/stats/health/death
execute if score $health% ovk.data matches 5..9 run attribute @s generic.max_health base set 1
execute if score $health% ovk.data matches 10..14 run attribute @s generic.max_health base set 2
execute if score $health% ovk.data matches 15..19 run attribute @s generic.max_health base set 3
execute if score $health% ovk.data matches 20..24 run attribute @s generic.max_health base set 4
execute if score $health% ovk.data matches 25..29 run attribute @s generic.max_health base set 5
execute if score $health% ovk.data matches 30..34 run attribute @s generic.max_health base set 6
execute if score $health% ovk.data matches 35..39 run attribute @s generic.max_health base set 7
execute if score $health% ovk.data matches 40..44 run attribute @s generic.max_health base set 8
execute if score $health% ovk.data matches 45..49 run attribute @s generic.max_health base set 9
execute if score $health% ovk.data matches 50..54 run attribute @s generic.max_health base set 10
execute if score $health% ovk.data matches 55..59 run attribute @s generic.max_health base set 11
execute if score $health% ovk.data matches 60..64 run attribute @s generic.max_health base set 12
execute if score $health% ovk.data matches 65..69 run attribute @s generic.max_health base set 13
execute if score $health% ovk.data matches 70..74 run attribute @s generic.max_health base set 14
execute if score $health% ovk.data matches 75..79 run attribute @s generic.max_health base set 15
execute if score $health% ovk.data matches 80..84 run attribute @s generic.max_health base set 16
execute if score $health% ovk.data matches 85..89 run attribute @s generic.max_health base set 17
execute if score $health% ovk.data matches 90..94 run attribute @s generic.max_health base set 18
execute if score $health% ovk.data matches 95..99 run attribute @s generic.max_health base set 19
execute if score $health% ovk.data matches 100 run attribute @s generic.max_health base set 20

effect give @s minecraft:instant_health 1 28 true

tag @s add ovk.hp_update
execute if score $health% ovk.data matches 0.. run schedule function ovk:entity/player/stats/health/schedule 1t