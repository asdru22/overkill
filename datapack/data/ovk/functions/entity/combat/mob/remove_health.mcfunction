data modify storage ovk:storage root.temp.MobData set from entity @s HandItems[1].tag.ovkm

execute if data storage ovk:storage root.temp.MobData.Stats.Armor run function ovk:entity/combat/mob/defense_types/main
scoreboard players operation @s ovk.s.current_health -= $damage ovk.data
data merge entity @s {Health:100f}
execute if score @s ovk.s.current_health matches ..0 run function ovk:entity/mob/events/killed_by_player

execute if score $debug ovk.data matches 1 run tellraw @a [{"text":"Recived Damage: "},{"score":{"name":"$damage","objective":"ovk.data"}}]