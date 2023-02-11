execute store result score $max_damage ovk.data run attribute @s generic.attack_damage get 100

function ovk:entity/combat/player/extra_melee_damage

# Is the player holding a melee weapon?
execute if predicate ovk:item/combat/is_melee run data modify storage ovk:storage root.temp.attack.Compatible set value 1b

# remove 3 to compensate for approximations
scoreboard players remove $max_damage ovk.data 3

execute if score $true_damage ovk.data >= $max_damage ovk.data run data modify storage ovk:storage root.temp.attack.Charged set value 1b

#execute if score $debug ovk.data matches 1 run tellraw @a "---------------------"
#execute if score $debug ovk.data matches 1 run tellraw @a [{"text":"True Damage dealt: "},{"score":{"name":"$true_damage","objective":"ovk.data"}}]
#execute if score $debug ovk.data matches 1 run tellraw @a [{"text":"True Max damage: "},{"score":{"name":"$max_damage","objective":"ovk.data"}}]

scoreboard players operation $true_damage ovk.data *= 100 ovk.data
execute store result storage ovk:storage root.temp.attack.Charge float 0.01 run scoreboard players operation $true_damage ovk.data /= $max_damage ovk.data