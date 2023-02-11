data modify storage ovk:storage root.temp.attack set value {Compatible:0b}

execute if predicate ovk:entity/player/damage_types/melee run data modify storage ovk:storage root.temp.attack.Type set value "Melee"
execute unless data storage ovk:storage root.temp.equipment.Mainhand.id run data modify storage ovk:storage root.temp.attack.Type set value "Melee"
execute if predicate ovk:entity/player/damage_types/magic run data modify storage ovk:storage root.temp.attack.Type set value "Magic"
execute if predicate ovk:entity/player/damage_types/ranged run data modify storage ovk:storage root.temp.attack.Type set value "Ranged"
execute if predicate ovk:entity/player/damage_types/ranged_firework run data modify storage ovk:storage root.temp.attack.Firework set value 1b

execute if data storage ovk:storage root.temp.attack{Type:"Melee"} run function ovk:entity/combat/player/melee_attack
execute if data storage ovk:storage root.temp.attack{Type:"Ranged"} run function ovk:entity/combat/player/ranged_attack
execute if data storage ovk:storage root.temp.attack{Type:"Magic"} run function ovk:entity/combat/player/magic_attack