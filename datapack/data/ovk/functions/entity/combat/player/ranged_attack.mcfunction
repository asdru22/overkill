# Is the player holding a melee weapon?
execute if predicate ovk:item/combat/is_ranged run data modify storage ovk:storage root.temp.attack.Compatible set value 1b

#execute if score $debug ovk.data matches 1 run tellraw @a "---------------------"
#execute if score $debug ovk.data matches 1 run tellraw @a [{"text":"Ranged damage: "},{"score":{"name":"$true_damage","objective":"ovk.data"}}]
execute store result storage ovk:storage root.temp.attack.Charge float 0.001 run scoreboard players get $true_damage ovk.data