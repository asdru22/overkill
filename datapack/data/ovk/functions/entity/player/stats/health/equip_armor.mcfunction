function ovk:entity/combat/player/get_equipment
execute if entity @s[ovkancements={ovk:technical/inventory_changed/equip_stats={max_health=true}}] run function ovk:entity/player/stats/health/get
execute if entity @s[ovkancements={ovk:technical/inventory_changed/equip_stats={max_mana=true}}] run function ovk:entity/player/stats/mana/get
ovkancement revoke @s only ovk:technical/inventory_changed/equip_stats