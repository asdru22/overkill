execute if entity @s[ovkancements={ovk:technical/entity_hurt_player={entity=true}}] on attacker run function ovk:entity/player/events/killed_by_entity

kill @s[tag=!ovk.player.dead]