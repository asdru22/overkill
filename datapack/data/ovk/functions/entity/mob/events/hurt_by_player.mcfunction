# Prefetch the data used by player
data modify storage ovk:storage root.temp.MobData set from entity @s HandItems[1].tag.ovkm
execute store result score $true_damage ovk.data run data get entity @s Health -100
scoreboard players operation $true_damage ovk.data += @s ovk.mob_health
# Execute as player
execute on attacker if entity @s[type=player] run function ovk:entity/player/events/hurt_entity
# return execution to entity
function ovk:entity/combat/mob/remove_health
tag @s add ovk.entity.player_hurt