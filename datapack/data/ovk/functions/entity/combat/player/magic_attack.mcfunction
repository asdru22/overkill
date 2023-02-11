# Is the player holding a melee weapon?
execute if predicate ovk:item/combat/is_magic run data modify storage ovk:storage root.temp.attack.Compatible set value 1b

#execute if score $debug ovk.data matches 1 run tellraw @a "---------------------"
#execute if score $debug ovk.data matches 1 run tellraw @a [{"text":"Magic damage: "},{"score":{"name":"$true_damage","objective":"ovk.data"}}]