# Effects check
execute if predicate ovk:entity/player/effects/vanilla/strength run function ovk:entity/combat/player/check_strength
execute if predicate ovk:entity/player/effects/vanilla/weakness run function ovk:entity/combat/player/check_weakness

# Crit check
execute unless entity @s[predicate=ovk:entity/player/can_crit] run function ovk:entity/combat/player/check_crit

# Enchantment check
execute if data storage ovk:storage root.temp.equipment.Mainhand{tag:{Enchantments:[{}]}} run function ovk:item/enchanted/melee_weapons/main