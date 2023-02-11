# Overkill
Scoreboard based damage lib for survival datapacks (or maps)

stats that use scoreboards
- "regular" damage
- melee damage
- ranged damage
- magic damage
- health
- max health
- armor toughness
- all other magic/mana related stuff

This datapack is the culmination of multiple years of messing around with scoreboard based damage.

It allows for seemless integration of scoreboard damage operations within survival scenarios.

The pack also differentiates between melee,ranged and magic damage, with the player items as source and mobs as target

function calls can be used to apply specific damage types  
```
function ovk:entity/combat/apply_damage/melee
function ovk:entity/combat/apply_damage/magic
function ovk:entity/combat/apply_damage/ranged
```
the damage amount is set via `$damage ovk.data`

# Generator
the pack also features an item generator to make loot tables of items with custom stats, you can find an example in `z_item_database`, the actual items must be put in the `items` folder.
You can remove arrays for the stats if all the values are unused, otherwise if at least one value is present, set all other unused values in that array to 0

# Custom mobs
Mobs with custom damage stats can be made either by changing their default attributes, or by summoning them with an item in their offhand with the necessary tags already loaded (see `ovk:entity/mob/setup`)
