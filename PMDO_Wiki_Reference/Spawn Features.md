# Spawn Features

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Spawn_Features

**Spawn Features** are special properties that can be applied to an NPC Pokémon when adding them to a dungeon. These can be used to add special behavior to allied NPCs or to alter the battle behavior of enemies, among various other uses.

## List of Spawn Features

| Internal name | Effect | Notes |
| --- | --- | --- |
| MobSpawnAltColor | Allows spawning the specified Pokémon with a custom Shiny chance from the default. |  |
| MobSpawnBoost | Spawns the Pokémon with [EV boosts](https://wiki.pmdo.pmdcollab.org/wiki/EV_boosts "EV boosts (page does not exist)") already applied. |  |
| MobSpawnDiscriminator | *This section is a **stub**. You can help PMDO Wiki by expanding it.*  Relates to [personality](https://wiki.pmdo.pmdcollab.org/wiki/Personality "Personality (page does not exist)") somehow. |  |
| MobSpawnFoeConflict | Allied NPCs with this property will fight enemies on their own. |  |
| MobSpawnInteractable | Allows triggering a custom event when the Pokémon is interacted with. Custom events may be scripted for this. | Useful for programming friendly NPCs, so you can talk to them or run a shop script. |
| MobSpawnInv | The Pokémon starts with their inventory containing the specified items. These items can be used by the Pokémon if their AI allows it, and will **not** be dropped on defeat.  If "Map Start Only" is checked, only the Pokémon who spawn at the start of the floor will be holding the items. | This can be used to give enemy Pokémon the effects of held items without allowing the player to loot said items after defeating them. |
| MobSpawnItem | The Pokémon starts holding the specified items. These items can only be used by the Pokémon if their AI allows it, and will always be dropped on defeat  If "Map Start Only" is checked, only the Pokémon who spawn at the start of the floor will be holding the items. | This can be used to make certain enemy Pokémon always drop a certain item (e.g. enemy Delphox dropping a wand item). |
| MobSpawnLevelScale | Scales the Pokémon's level to the floor number. | If you wanted to add 0.25 of a level every floor (thus, level goes up by 1 every 4 floors), set "Add numerator" to 1 and "Add denominator" to 4. |
| MobSpawnLoc | Spawn the Pokémon at a specific location on the floor, and facing a certain direction. |  |
| MobSpawnLuaTable | Use a Lua table to set this Pokémon's parameters. | *This section is a **stub**. You can help PMDO Wiki by expanding it.* |
| MobSpawnMovesOff | Turn off parts of a Pokémon's moveset. The AI, both allied and enemy, will not use moves that are turned off.  If the "Remove" flag is checked, the unused moves will be removed from the Pokémon's learnset. | This feature is extremely helpful for making enemies behave in a more specific way, and so nearly every enemy in PMDO has this property defined.  To make an enemy only use the first move in its moveset, set "Start At" to 1. For the first two moves, set "Start At" to 2, and so on. |
| MobSpawnScaledBoost | Spawns the Pokémon with [EV boosts](https://wiki.pmdo.pmdcollab.org/wiki/EV_boosts "EV boosts (page does not exist)") already applied, scaled to a certain level range. |  |
| MobSpawnStatus | Spawns the Pokémon with a status problem already applied. This can also be a positive status. |  |
| MobSpawnUnrecruitable | Makes the Pokémon entirely unrecruitable, no matter what. |  |
| MobSpawnWeak | Makes the Pokémon start with half of its PP and 35 Belly. | Nearly all normal enemies in PMDO have this property, as it better enables the player to PP stall certain enemies and use items such as Hunger Seeds.  The PP will be restored upon recruit, but the Belly will not be restored. |
