gamerule showDeathMessages false

tellraw @a [{"selector":"@a[ovkancements={ovk:technical/entity_hurt_player=true}]"}," was trolled hard by ",{"selector":"@s"}]
schedule function ovk:entity/player/stats/health/revert_death_messages 1t
