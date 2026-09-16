# Terrain

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Terrain

**Terrain** determines the properties of non-trap tiles and which Pokémon can walk over them.

Terrain is not to be confused with the effects of similarly-named moves such as [Grassy Terrain](https://wiki.pmdo.pmdcollab.org/wiki/Grassy_Terrain "Grassy Terrain (page does not exist)"), which are implemented as [map statuses](https://wiki.pmdo.pmdcollab.org/wiki/Map_statuses "Map statuses").

## List of terrain types

This chart contains no images, as terrain properties can be applied separately from the visual appearance of a tile.

| Terrain | Walkable by | Blocks vision | [Terrain States](https://wiki.pmdo.pmdcollab.org/wiki/Terrain_States "Terrain States (page does not exist)") | Special effects |
| --- | --- | --- | --- | --- |
| Floor | all | No |  | Default terrain. |
| Wall | [Ghost](https://wiki.pmdo.pmdcollab.org/wiki/File:Type_Ghost.png "Ghost")Ghost-types | Yes | WallTerrainState |  |
| Unbreakable | none | Yes |  | Can't be destroyed by any means, and blocks the effects of moves and items. Usually used for dungeon floor and treasure room borders. |
| Grass | all | Yes | FoliageTerrainState |  |
| Water | [Water](https://wiki.pmdo.pmdcollab.org/wiki/File:Type_Water.png "Water")Water-types [Flying](https://wiki.pmdo.pmdcollab.org/wiki/File:Type_Flying.png "Flying")Flying-types [Dragon](https://wiki.pmdo.pmdcollab.org/wiki/File:Type_Dragon.png "Dragon")Dragon-types [Levitate](https://wiki.pmdo.pmdcollab.org/wiki/Levitate "Levitate") users | No | WaterTerrainState | Cures [Burn](https://wiki.pmdo.pmdcollab.org/wiki/Burn "Burn") if stepped on. |
| Lava | [Fire](https://wiki.pmdo.pmdcollab.org/wiki/File:Type_Fire.png "Fire")Fire-types [Flying](https://wiki.pmdo.pmdcollab.org/wiki/File:Type_Flying.png "Flying")Flying-types [Dragon](https://wiki.pmdo.pmdcollab.org/wiki/File:Type_Dragon.png "Dragon")Dragon-types [Levitate](https://wiki.pmdo.pmdcollab.org/wiki/Levitate "Levitate") users | No | LavaTerrainState | Inflicts [Burn](https://wiki.pmdo.pmdcollab.org/wiki/Burn "Burn") if stepped on. Destroys items if they fall on it. |
| Abyss | [Flying](https://wiki.pmdo.pmdcollab.org/wiki/File:Type_Flying.png "Flying")Flying-types [Levitate](https://wiki.pmdo.pmdcollab.org/wiki/Levitate "Levitate") users | No | AbyssTerrainState | Destroys items if they fall on it. |
| Poison | [Water](https://wiki.pmdo.pmdcollab.org/wiki/File:Type_Water.png "Water")Water-types [Flying](https://wiki.pmdo.pmdcollab.org/wiki/File:Type_Flying.png "Flying")Flying-types [Dragon](https://wiki.pmdo.pmdcollab.org/wiki/File:Type_Dragon.png "Dragon")Dragon-types [Levitate](https://wiki.pmdo.pmdcollab.org/wiki/Levitate "Levitate") users | No | WaterTerrainState | Inflicts [Poison](https://wiki.pmdo.pmdcollab.org/wiki/Poison_%28status%29 "Poison (status)") if stepped on. |

## Destroying terrain

Moves that have the `RemoveTerrainStateEvent` property On Hit Tiles can destroy various types of terrain based on their [TerrainState](https://wiki.pmdo.pmdcollab.org/wiki/TerrainState "TerrainState (page does not exist)"). When terrain is destroyed, it is turned into a floor tile.
