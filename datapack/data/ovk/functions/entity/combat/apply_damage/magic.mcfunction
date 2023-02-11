## $damage ovk.data is preset
data modify storage ovk:storage root.temp.attack.Type set value "Magic"
effect give @s instant_damage 1 30 true
effect give @s instant_health 1 30 true

execute if entity @s[type=!player] run function ovk:entity/combat/mob/remove_health
execute if entity @s[type=player] run function ovk:entity/combat/player/remove_health