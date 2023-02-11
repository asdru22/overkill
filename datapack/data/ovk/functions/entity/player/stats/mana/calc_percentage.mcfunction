execute if score @s ovk.s.current_mana > @s ovk.s.max_mana run scoreboard players operation @s ovk.s.current_mana = @s ovk.s.max_mana

scoreboard players operation $mana% ovk.data = @s ovk.s.current_mana
scoreboard players operation $mana% ovk.data *= 100 ovk.data 
scoreboard players operation $mana% ovk.data /= @s ovk.s.max_mana