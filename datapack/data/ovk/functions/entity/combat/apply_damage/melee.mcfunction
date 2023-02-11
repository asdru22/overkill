## $damage ovk.data is preset
data modify storage ovk:storage root.temp.attack.Type set value "Melee"
execute if entity @s[type=!player] run function ovk:entity/combat/mob/remove_health
execute if entity @s[type=player] run function ovk:entity/combat/player/remove_health