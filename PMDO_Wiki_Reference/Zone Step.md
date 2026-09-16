# Zone Step

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Zone_Step

Zone Steps are map generation steps that span through multiple floors. For example, they can ensure at least a certain amount of food spawns in the dungeon, and that it's properly spaced apart between floors. Zone Steps operate by inserting their own steps into the normal [floor generation process](Floor%20Generation%20Overview.md "Floor Generation Overview") before the entire list is run.

## General Steps

Below is a table of general zone steps, what priorities they are often set to be placed at, and what they are used for.

| Priority | Step | Description |
| --- | --- | --- |
| 2.1 | [HandleRescues](https://wiki.pmdo.pmdcollab.org/wiki/Handle_Rescues "Handle Rescues") | A special step needed to support rescues. |
| -1 | [ShowFloorName](https://wiki.pmdo.pmdcollab.org/wiki/Show_Floor_Name "Show Floor Name") | Gives the floor a name and makes that name appear before fading in. |
| - | [ScriptZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Script_Zone_Step "Script Zone Step") | Calls a lua script function as the zone step. |

## Spawn Tables

These are zone steps that initialize [spawn tables](https://wiki.pmdo.pmdcollab.org/wiki/Spawn_Table "Spawn Table") for all floors.

| Priority | Step | Description |
| --- | --- | --- |
| 1 | [MoneySpawnZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Money_Spawn_Zone_Step "Money Spawn Zone Step") | Specifies how much total money spawns on the first floor, and how much is added each floor. |
| 1.1 | [ItemSectionedZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Item_Sectioned_Zone_Step "Item Sectioned Zone Step") | Sets the spawn table for items and applies them to multiple floors. |
| 1.1 | [ItemSpawnZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Item_Spawn_Zone_Step "Item Spawn Zone Step") | Sets the spawn rate for individual items and applies them to multiple floors. More flexible than ItemSectionedZoneStep but harder to understand probabilities. |
| 1.2 | [TeamSpawnZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Team_Spawn_Zone_Step "Team Spawn Zone Step") | Sets the spawn rate for individual enemies and applies them to multiple floors. |
| 1.3 | [TileSpawnZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Tile_Spawn_Zone_Step "Tile Spawn Zone Step") | Sets the spawn rate for individual traps and applies them to multiple floors. |

## Spread Plans

These are zone steps that use [spread plans](https://wiki.pmdo.pmdcollab.org/wiki/Spread_Plan "Spread Plan").

| Priority | Step | Description |
| --- | --- | --- |
| -2.2 (Boss Room) 6.1.1 (Reward) | [SpreadBossZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Spread_Boss_Zone_Step "Spread Boss Zone Step") | Generates boss battles randomly across the whole segment. |
| \* | [SpreadCombinedZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Spread_Combined_Zone_Step "Spread Combined Zone Step") | Combines zonesteps that spread across floor to ensure none of them collide. The "higher" steps take priority over the "lower" steps in the list. |
| 4.1 | [SpreadHouses](https://wiki.pmdo.pmdcollab.org/wiki/Spread_Houses "Spread Houses") | Spreads different [houses](https://wiki.pmdo.pmdcollab.org/wiki/House "House") across the floors. |
| -4.1 ([Grid](https://wiki.pmdo.pmdcollab.org/wiki/GridFloorGen "GridFloorGen"))  -2.2 ([Room](https://wiki.pmdo.pmdcollab.org/wiki/RoomFloorGen "RoomFloorGen")) | [SpreadRoomZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Spread_Room_Zone_Step "Spread Room Zone Step") | Takes a room and spreads it across the dungeon based on a SpreadPlan. |
| \* | [SpreadStepZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Spread_Step_Zone_Step "Spread Step Zone Step") | Takes a collection of GenSteps and spreads them across the dungeon based on a SpreadPlan. |
| \* | [SpreadStepRangeZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Spread_Step_Range_Zone_Step "Spread Step Range Zone Step") | Takes a collection of GenSteps and spreads them across the dungeon based on a SpreadPlan. Each individual GenStep can have its own range and they can overlap. |
| 6.1.1 (Item)  5 (Tile) 6.2.1 (Mob) | [SpreadVaults](https://wiki.pmdo.pmdcollab.org/wiki/Spread_Vaults "Spread Vaults") | Spreads [vaults](https://wiki.pmdo.pmdcollab.org/wiki/Vault "Vault") across the dungeon. |
