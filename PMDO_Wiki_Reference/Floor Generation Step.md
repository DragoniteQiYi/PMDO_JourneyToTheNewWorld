# Floor Generation Step

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Floor_Generation_Step

**Floor Generation Steps** are steps that are used in floor generation. They are responsible for managing and initializing everything about a floor. The order they are performed in is dependent on each step's priority, with all steps having a standardized priority order for base PMDO.

## General Steps

Below is a table of commonly used steps, what priorities PMDO places them in, and what they are used for.

| Priority | Step | Description |
| --- | --- | --- |
| -6 | [MapDataStep](https://wiki.pmdo.pmdcollab.org/wiki/Map_Data_Step "Map Data Step") | Sets the music, time limit, and [darkness](Darkness.md "Darkness") of the floor. |
| -6 | [MapNameIDStep](https://wiki.pmdo.pmdcollab.org/wiki/Map_Name_ID_Step "Map Name ID Step") | Gives the floor a name. Its [zone step](https://wiki.pmdo.pmdcollab.org/wiki/Zone_step "Zone step") version [ShowFloorName](https://wiki.pmdo.pmdcollab.org/wiki/Show_Floor_Name "Show Floor Name") is recommended in most cases. |
| -6 | [MapExtraStatusStep](https://wiki.pmdo.pmdcollab.org/wiki/MapExtraStatusStep "MapExtraStatusStep") | Sets a bunch of statuses on the map. |
| -6 | [MapTitleDropStep](https://wiki.pmdo.pmdcollab.org/wiki/Map_Title_Drop_Step "Map Title Drop Step") | Makes the floor name appear on entry before fading in. Its [zone step](https://wiki.pmdo.pmdcollab.org/wiki/Zone_step "Zone step") version [ShowFloorName](https://wiki.pmdo.pmdcollab.org/wiki/Show_Floor_Name "Show Floor Name") is recommended in most cases. |
| -6 | [MapEffectStep](https://wiki.pmdo.pmdcollab.org/wiki/Map_Effect_Step "Map Effect Step") | Sets event data for the floor. |
| -6 | [DefaultMapStatusStep](https://wiki.pmdo.pmdcollab.org/wiki/Default_Map_Status_Step "Default Map Status Step") | Sets the base [map status](Map%20Statuses.md "Map Statuses") of the map. |
| -6 | [StateMapStatusStep](https://wiki.pmdo.pmdcollab.org/wiki/StateMapStatusStep "StateMapStatusStep") | Adds a specified [map status](https://wiki.pmdo.pmdcollab.org/wiki/Map_status "Map status") to the map. |
| -1 | [DrawFloorToTileStep](https://wiki.pmdo.pmdcollab.org/wiki/Draw_Floor_To_Tile_Step "Draw Floor To Tile Step") | Creates a grid of tiles and draws onto it based on the list of rooms and halls from a RoomFloorGen or GridFloorGen. |
| 0.2 | [TempTileStep](https://wiki.pmdo.pmdcollab.org/wiki/TempTileStep "TempTileStep") | Places a temporary tile that is kept track of and removed by a [map status](https://wiki.pmdo.pmdcollab.org/wiki/Map_status "Map status"). |
| 1.2 | [MobSpawnSettingsStep](https://wiki.pmdo.pmdcollab.org/wiki/Mob_Spawn_Settings_Step "Mob Spawn Settings Step") | Sets the rules for enemies respawning on the floor. |
| 2 | [FloorStairsStep](https://wiki.pmdo.pmdcollab.org/wiki/Floor_Stairs_Step "Floor Stairs Step") | Places the start point and the end stairs in different rooms. Has a min distance, but no max distance. |
| 2 | [FloorStairsDistanceStep](https://wiki.pmdo.pmdcollab.org/wiki/FloorStairsDistanceStep "FloorStairsDistanceStep") | Places the start point and the end stairs in different rooms. Has a min and max distance. |
| 2.1 | [RescueSpawner](https://wiki.pmdo.pmdcollab.org/wiki/RescueSpawner "RescueSpawner") | Spawns a rescue flag somewhere on the map. This step should never be explcitly added, but instead added dynamically when in rescue mode. |
| 3 | [RoomPostProcStep](https://wiki.pmdo.pmdcollab.org/wiki/RoomPostProcStep "RoomPostProcStep") | Sets terrain in a room to a certain value. |
| 4 | [MapTextureStep](https://wiki.pmdo.pmdcollab.org/wiki/Map_Texture_Step "Map Texture Step") | Defines the tile graphics for floors, walls, and water. |
| 4 | [MapDictTextureStep](https://wiki.pmdo.pmdcollab.org/wiki/Map_Dict_Texture_Step "Map Dict Texture Step") | Defines the tile graphics in a more advanced way, needed if the layout uses grass. |
| \* | [RandGenStep](https://wiki.pmdo.pmdcollab.org/wiki/RandGenStep "RandGenStep") | Randomly selects one of the floor generation steps specified in its spawn table. |
| \* | [ScriptGenStep](https://wiki.pmdo.pmdcollab.org/wiki/ScriptGenStep "ScriptGenStep") | Calls a lua script to act like the floor step. |

## FloorGen Dependant Steps

These are steps that are exclusive for certain types of [FloorGen](https://wiki.pmdo.pmdcollab.org/wiki/FloorGen "FloorGen").

### GridFloorGen Steps

These steps are used exclusively for [GridFloorGen](https://wiki.pmdo.pmdcollab.org/wiki/GridFloorGen "GridFloorGen").

| Priority | Step | Description |
| --- | --- | --- |
| -5 | [InitGridPlanStep](https://wiki.pmdo.pmdcollab.org/wiki/Init_Grid_Plan_Step "Init Grid Plan Step") | Initializes a grid for GridFloorGen. |
| -4 | [GridPathBranch, GridPathCircle, GridPathTwoSides, etc.](https://wiki.pmdo.pmdcollab.org/wiki/Grid_Path_Steps "Grid Path Steps") | Generates a path of rooms and halls for GridFloorGen. |
| -4 | [SetGridDefaultsStep](https://wiki.pmdo.pmdcollab.org/wiki/Set_Grid_Defaults_Step "Set Grid Defaults Step") | Turns some rooms into halls (1 tile size), for GridFloorGen. |
| -4 | [ConnectGridBranchStep](https://wiki.pmdo.pmdcollab.org/wiki/Connect_Grid_Branch_Step "Connect Grid Branch Step") | Connects some adjacent rooms, for GridFloorGen. |
| -4 | [CombineGridRoomStep](https://wiki.pmdo.pmdcollab.org/wiki/Combine_Grid_Room_Step "Combine Grid Room Step") | Combines some rooms into larger rooms, for GridFloorGen. |
| -4 | [SetGridPlanComponentStep](https://wiki.pmdo.pmdcollab.org/wiki/Set_Grid_Plan_Component_Step "Set Grid Plan Component Step") | Tags all rooms in the grid plan as the specified [components](https://wiki.pmdo.pmdcollab.org/wiki/Component_Tag "Component Tag"). |
| -4 | [SetGridInnerComponentStep](https://wiki.pmdo.pmdcollab.org/wiki/Set_Grid_Inner_Component_Step "Set Grid Inner Component Step") | Tags all rooms on the interior of the grid as the specified [components](https://wiki.pmdo.pmdcollab.org/wiki/Component_Tag "Component Tag"). |
| -3 | [DrawGridToFloorStep](https://wiki.pmdo.pmdcollab.org/wiki/Draw_Grid_To_Floor_Step "Draw Grid To Floor Step") | Initializes a list of rooms and halls and populates it with the grid from GridFloorGen. |
| -2 | [AddLargeRoomStep](https://wiki.pmdo.pmdcollab.org/wiki/AddLargeRoomStep "AddLargeRoomStep") | Adds a large room to the floor plan, on top of pre-existing rooms. |
| -2.2 | [SetGridSpecialRoomStep](https://wiki.pmdo.pmdcollab.org/wiki/SetGridSpecialRoomStep "SetGridSpecialRoomStep") | Takes an existing grid plan, and then changes one of the specified rooms into a new room type. |

### RoomFloorGen Steps

These steps are used exclusively for [RoomFloorGen](https://wiki.pmdo.pmdcollab.org/wiki/RoomFloorGen "RoomFloorGen").

| Priority | Step | Description |
| --- | --- | --- |
| -3 | [InitFloorPlanStep](https://wiki.pmdo.pmdcollab.org/wiki/Init_Floor_Plan_Step "Init Floor Plan Step") | Initializes a list of rooms and halls for RoomFloorGen. |
| -2 | [FloorPathBranch](https://wiki.pmdo.pmdcollab.org/wiki/Floor_Path_Branch "Floor Path Branch") | Generates a path of rooms and halls for RoomFloorGen. |

### LoadGen Steps

These steps are used exclusively for [LoadGen](https://wiki.pmdo.pmdcollab.org/wiki/LoadGen "LoadGen").

| Priority | Step | Description |
| --- | --- | --- |
| -7 | [MappedRoomStep](https://wiki.pmdo.pmdcollab.org/wiki/Mapped_Room_Step "Mapped Room Step") | Loads a dungeon map to use as this floor's layout, including its entities and properties. |

### StairsFloorGen Steps

These steps are used exclusively for [StairsFloorGen](https://wiki.pmdo.pmdcollab.org/wiki/StairsFloorGen "StairsFloorGen").

| Priority | Step | Description |
| --- | --- | --- |
| -1 | [InitTilesStep](https://wiki.pmdo.pmdcollab.org/wiki/Init_Tiles_Step "Init Tiles Step") | Sets the floor dimensions and initializes a grid of tiles, for StairsFloorGen. |
| 2 | [StairsStep](https://wiki.pmdo.pmdcollab.org/wiki/Stairs_Step "Stairs Step") | Places the start point and the end stairs on different tiles of the floor, for StairsFloorGen. |

## Spawn Table Steps

These steps are used to define spawn tables for the floor.

| Priority | Step | Description |
| --- | --- | --- |
| 1 | [MoneySpawnStep](https://wiki.pmdo.pmdcollab.org/wiki/Money_Spawn_Step "Money Spawn Step") | Sets the spawn table for money on this floor. Its [Zone Step](Zone%20Step.md "Zone Step") version [MoneySpawnZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Money_Spawn_Zone_Step "Money Spawn Zone Step") is recommended in most cases. |
| 1.1 | [ItemSpawnStep](https://wiki.pmdo.pmdcollab.org/wiki/Item_Spawn_Step "Item Spawn Step") | Sets the spawn table for items on this floor. Its [Zone Step](Zone%20Step.md "Zone Step") versions [ItemZoneSteps](https://wiki.pmdo.pmdcollab.org/wiki/Item_Zone_Steps "Item Zone Steps") are recommended in most cases. |
| 1.2 | [MobSpawnStep](https://wiki.pmdo.pmdcollab.org/wiki/Mob_Spawn_Step "Mob Spawn Step") | Sets the spawn table for NPCs on this floor. Its [Zone Step](Zone%20Step.md "Zone Step") version [TeamSpawnZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Team_Spawn_Zone_Step "Team Spawn Zone Step") is recommended in most cases. |
| 1.3 | [TileSpawnStep](https://wiki.pmdo.pmdcollab.org/wiki/Tile_Spawn_Step "Tile Spawn Step") | Sets the spawn table for traps on this floor. Its [Zone Step](Zone%20Step.md "Zone Step") version [TileSpawnZoneStep](https://wiki.pmdo.pmdcollab.org/wiki/Tile_Spawn_Zone_Step "Tile Spawn Zone Step") is recommended in most cases. |

## Post-Gen Room Steps

These steps place rooms and halls after the primary room generation steps have been called.

| Priority | Step | Description |
| --- | --- | --- |
| -2.2 | [AddBossRoomStep](https://wiki.pmdo.pmdcollab.org/wiki/AddBossRoomStep "AddBossRoomStep") | Creates and attaches a boss room to the pre-exisiting floor plan. |
| -2.2 | [AddConnectedRoomsRandStep](https://wiki.pmdo.pmdcollab.org/wiki/AddConnectedRoomsRandStep "AddConnectedRoomsRandStep") | Creates and attaches connected rooms to the pre-existing floor plan. |
| -2.2 | [AddConnectedRoomsStep](https://wiki.pmdo.pmdcollab.org/wiki/AddConnectedRoomsStep "AddConnectedRoomsStep") | Creates and attaches connected rooms to the pre-existing floor plan. |
| -2.2 | [ConnectRoomStep](https://wiki.pmdo.pmdcollab.org/wiki/ConnectRoomStep "ConnectRoomStep") | Taking the current floor plan, connects its rooms with other rooms. |
| -2.2 | [AddDisconnectedRoomsStep](https://wiki.pmdo.pmdcollab.org/wiki/Add_Disconnected_Rooms_Step "Add Disconnected Rooms Step") | Adds disconnected rooms to the map. Will keep trying until the specified amount of rooms are placed, but this may cause performance problems. |
| -2.2 | [AddDisconnectedRoomsRandStep](https://wiki.pmdo.pmdcollab.org/wiki/AddDisconnectedRoomsRandStep "AddDisconnectedRoomsRandStep") | Adds disconnected rooms to the map. Only tries to place the room a finite amount of times before giving up. |
| -2.5 | [ClampFloorStep](https://wiki.pmdo.pmdcollab.org/wiki/ClampFloorStep "ClampFloorStep") | Clamps the size of the floor to be within a min and a max size. |
| 0.3 | [AddTunnelStep](https://wiki.pmdo.pmdcollab.org/wiki/Add_Tunnel_Step "Add Tunnel Step") | Digs tunnels into the walls starting from a room. |
| 0.1 | [UnbreakableBorderStep](https://wiki.pmdo.pmdcollab.org/wiki/Unbreakable_Border_Step "Unbreakable Border Step") | Adds a border of unbreakable tiles at the edge of the map. |
| 0.1 | [TileBorderStep](https://wiki.pmdo.pmdcollab.org/wiki/Tile_Border_Step "Tile Border Step") | Adds a border of the specified tiles at the edge of the map. |
| 3 | [LoadBlobStep](https://wiki.pmdo.pmdcollab.org/wiki/LoadBlobStep "LoadBlobStep") | Paints a blob onto the floor, based on some maps. |

## Terrain Painting & Carving Steps

These steps are used to modify the terrain of the floor.

| Priority | Step | Description |
| --- | --- | --- |
| -2.1 | [TerrainSealStep](https://wiki.pmdo.pmdcollab.org/wiki/TerrainSealStep "TerrainSealStep") | Seals a room in the specified terrain. |
| 3 | [PerlinWaterStep](https://wiki.pmdo.pmdcollab.org/wiki/Perlin_Water_Step "Perlin Water Step") | Adds water/lava/etc. using Perlin Noise. |
| 3 | [BlobWaterStep](https://wiki.pmdo.pmdcollab.org/wiki/Blob_Water_Step "Blob Water Step") | Adds water/lava/etc. by placing several blobs made from cellular automata. |
| 3 | [RoomTerrainStep](https://wiki.pmdo.pmdcollab.org/wiki/Room_Terrain_Step "Room Terrain Step") | Sets terrain in a number of rooms to a certain value. |
| 3 | [FillImpassableStep](https://wiki.pmdo.pmdcollab.org/wiki/FillImpassableStep "FillImpassableStep") | Fills all tiles that can't be reached with impassable tiles. |
| 3 | [PatternTerrainStep](https://wiki.pmdo.pmdcollab.org/wiki/PatternTerrainStep "PatternTerrainStep") | Places terrain in the specified pattern. |
| 3.1 | [DropDiagonalBlockStep](https://wiki.pmdo.pmdcollab.org/wiki/Drop_Diagonal_Block_Step "Drop Diagonal Block Step") | If blobs of terrain are touching diagonally, then they are merged together. |
| 3.2 | [EraseIsolatedStep](https://wiki.pmdo.pmdcollab.org/wiki/Erase_Isolated_Step "Erase Isolated Step") | Replaces isolated terrain of the specified type with walls. |
| 3.2 | [EraseIsolatedFromSpawnStep](https://wiki.pmdo.pmdcollab.org/wiki/EraseIsolatedFromSpawnStep "EraseIsolatedFromSpawnStep") | Erases tiles of the given type that are isolated from spawn. |

## Tagging Steps

These steps are used to tag certain parts of a floor for future identification in other steps.

| Priority | Step | Description |
| --- | --- | --- |
| -2.1 | [MarkAsHallStep](https://wiki.pmdo.pmdcollab.org/wiki/MarkAsHallStep "MarkAsHallStep") | Marks rooms that pass its filters as a hall. |
| -2.1 | [SetFloorPlanComponentStep](https://wiki.pmdo.pmdcollab.org/wiki/SetFloorPlanComponentStep "SetFloorPlanComponentStep") | Takes all rooms in the map's floor plan and gives them the specified component, for future filtering. |

## Feature Step

These steps are used to place various features, such as [houses](https://wiki.pmdo.pmdcollab.org/wiki/Houses "Houses").

| Priority | Step | Description |
| --- | --- | --- |
| 2.2 | [KeyDetourStep](https://wiki.pmdo.pmdcollab.org/wiki/KeyDetourStep "KeyDetourStep") | Adds an extra room to the floor that can only be accessed with a key item. |
| 4.1 | [MonsterHallStep](https://wiki.pmdo.pmdcollab.org/wiki/MonsterHallStep "MonsterHallStep") | Creates a [house](https://wiki.pmdo.pmdcollab.org/wiki/House "House") that can occur in halls. |
| 4.1 | [MonsterHouseStep](https://wiki.pmdo.pmdcollab.org/wiki/MonsterHouseStep "MonsterHouseStep") | Creates a [house](https://wiki.pmdo.pmdcollab.org/wiki/House "House") in a room. |
| 4.1 | [MonsterMansionStep](https://wiki.pmdo.pmdcollab.org/wiki/MonsterMansionStep "MonsterMansionStep") | Creates a [house](https://wiki.pmdo.pmdcollab.org/wiki/House "House") that takes up the entire floor. |
| 4.1 | [ChestStep](https://wiki.pmdo.pmdcollab.org/wiki/ChestStep "ChestStep") | Spawns a chest, which contains the contents of a [house](https://wiki.pmdo.pmdcollab.org/wiki/House "House"). |
| 4.2 | [ShopStep](https://wiki.pmdo.pmdcollab.org/wiki/ShopStep "ShopStep") | Spawns a shop somewhere in the map. |

### Combo Steps

These are steps that are combined with other steps to make certain structures.

| Priority | Step | Description |
| --- | --- | --- |
| 0.2 | [GuardSealStep](https://wiki.pmdo.pmdcollab.org/wiki/GuardSealStep "GuardSealStep") | Takes the target room and surrounds it by unbreakable blocks, with one key block used to unlock it. |
| 0.2 | [SwitchSealStep](https://wiki.pmdo.pmdcollab.org/wiki/SwitchSealStep "SwitchSealStep") | Takes the target rooms and surrounds them with unbreakable walls, with a switch key that unlocks them. |
| 2.2 | [SwitchDetourStep](https://wiki.pmdo.pmdcollab.org/wiki/SwitchDetourStep "SwitchDetourStep") | Adds an extra room that can only be accessed by pulling a switch. |

### Compass Steps

These steps are used to modify the settings of compasses.

| Priority | Step | Description |
| --- | --- | --- |
| 5.1 | [DetectItemStep](https://wiki.pmdo.pmdcollab.org/wiki/DetectItemStep "DetectItemStep") | Orients tiles that are defined as compasses to point to the given item. |
| 5.1 | [DetectTileStep](https://wiki.pmdo.pmdcollab.org/wiki/DetectTileStep "DetectTileStep") | Orients tiles that are defined as compasses to point to the given tile. |
| 5.2 | [SetCompassStep](https://wiki.pmdo.pmdcollab.org/wiki/SetCompassStep "SetCompassStep") | Orients all of the specified tiles to points of interests as a compass. |

## Spawn Steps

These steps are used to spawn various things.

| Priority | Step | Description |
| --- | --- | --- |
| 5 | [Random Room Spawn Step](https://wiki.pmdo.pmdcollab.org/wiki/Random_Room_Spawn_Step "Random Room Spawn Step") | Spawns money, items, traps, etc. in random rooms. |
| 5 | [Spaced Room Spawn Step](https://wiki.pmdo.pmdcollab.org/wiki/Spaced_Room_Spawn_Step "Spaced Room Spawn Step") | Spawns money, items, traps, etc. in random rooms, taking care not to place in the same room or adjacent rooms. |
| 5 | [Pattern Spawn Step](https://wiki.pmdo.pmdcollab.org/wiki/Pattern_Spawn_Step "Pattern Spawn Step") | Places money, items, traps, etc. on a room in specified patterns. |
| 6 | [Terminal Spawn Step](https://wiki.pmdo.pmdcollab.org/wiki/Terminal_Spawn_Step "Terminal Spawn Step") | Places money, items, traps, etc. in dead-end rooms. |
| 6.1 | [Due Spawn Step](https://wiki.pmdo.pmdcollab.org/wiki/Due_Spawn_Step "Due Spawn Step") | Spawns money, items, traps, etc. based on how far they are from the starting room. |
| 6.2 | [MoneyTrailSpawnStep](https://wiki.pmdo.pmdcollab.org/wiki/MoneyTrailSpawnStep "MoneyTrailSpawnStep") | Spawns a trail of money leading to an item. |
| 6.2 | [NearSpawnableSpawnStep](https://wiki.pmdo.pmdcollab.org/wiki/NearSpawnableSpawnStep "NearSpawnableSpawnStep") | Spawns a spawnable near a pre-existing spawnable. |
| 6.2 | [TerrainSpawnStep](https://wiki.pmdo.pmdcollab.org/wiki/TerrainSpawnStep "TerrainSpawnStep") | Spawns objects randomly on the specified terrain tiles. |
| 6.2 | [SpecificSpawnStep](https://wiki.pmdo.pmdcollab.org/wiki/SpecificSpawnStep "SpecificSpawnStep") | Spawns an object in the specified location. |

### Mob Spawning Steps

These steps specifically spawn mobs.

| Priority | Step | Description |
| --- | --- | --- |
| 6.2 | [PlaceRandomMobsStep](https://wiki.pmdo.pmdcollab.org/wiki/Place_Random_Mobs_Step "Place Random Mobs Step") | Randomly places teams of mobs on the map (enemy spawns, friendly NPCs). |
| 6.2.1 | [PlaceDisconnectedMobsStep](https://wiki.pmdo.pmdcollab.org/wiki/PlaceDisconnectedMobsStep "PlaceDisconnectedMobsStep") | Places mobs in disconnected parts of the map. |
| 6.2.1 | [PlaceNearSpawnableMobsStep](https://wiki.pmdo.pmdcollab.org/wiki/PlaceNearSpawnableMobsStep "PlaceNearSpawnableMobsStep") | Places mobs in a room that has a spawnable. |
| 6.2.1 | [PlaceNoLocMobsStep](https://wiki.pmdo.pmdcollab.org/wiki/PlaceNoLocMobsStep "PlaceNoLocMobsStep") | Places mobs without selecting their location. Used when the location is already pre-selected. |
| 6.2.1 | [PlaceRadiusMobsStep](https://wiki.pmdo.pmdcollab.org/wiki/PlaceRadiusMobsStep "PlaceRadiusMobsStep") | From tiles that can be reached by walking from the entrance, spawns mobs there within a certain radius. |
| 6.2.1 | [PlaceTerrainMobsStep](https://wiki.pmdo.pmdcollab.org/wiki/PlaceTerrainMobsStep "PlaceTerrainMobsStep") | Places mobs depending on the terrain. |

## Debug Steps

These steps are for debug or testing purposes.

| Priority | Step | Description |
| --- | --- | --- |
| 0 | [SpecificTilesStep](https://wiki.pmdo.pmdcollab.org/wiki/Specific_Tiles_Step "Specific Tiles Step") | Sets the floor to specific tiles. Only used for debug. |
| 7 | [DetectIsolatedStairsStep](https://wiki.pmdo.pmdcollab.org/wiki/Detect_Isolated_Stairs_Step "Detect Isolated Stairs Step") | Testing step: Looks for a path from start to end and throws an error if none can be found. |
| 7 | [DetectTileStep](https://wiki.pmdo.pmdcollab.org/wiki/Detect_Tile_Step "Detect Tile Step") | Testing step: Checks to see if a certain tile can be found on the map and throws an error if none can be found. |

## Obsolete Steps

These steps are made (mostly) obsolete by other steps.

| Priority | Step | Description |
| --- | --- | --- |
| -6 | [MapMusicStep](https://wiki.pmdo.pmdcollab.org/wiki/MapMusicStep "MapMusicStep") | Sets the music in the map. [MapDataStep](https://wiki.pmdo.pmdcollab.org/wiki/Map_Data_Step "Map Data Step") is suggested instead. |
| -6 | [MapTimeLimitStep](https://wiki.pmdo.pmdcollab.org/wiki/MapTimeLimitStep "MapTimeLimitStep") | Sets the time limit in the map. [MapDataStep](https://wiki.pmdo.pmdcollab.org/wiki/Map_Data_Step "Map Data Step") is suggested instead. |
| 6.2.1 | [DisconnectedSpawnStep](https://wiki.pmdo.pmdcollab.org/wiki/DisconnectedSpawnStep "DisconnectedSpawnStep") | Spawns mobs disconnected from spawn. Suggested to use regular spawning that selects rooms marked as disconnected instead. |

## Deprecated Steps

These steps, while still currently available, are deprecated and should not be used.

| Step | Former Use |
| --- | --- |
| `DetourStep` | ? |

## Unfinished Steps

These steps are not fully programmed yet.

| Priority | Step | Description |
| --- | --- | --- |
| ? | [MinimizeBarrierStep](https://wiki.pmdo.pmdcollab.org/wiki/MinimizeBarrierStep "MinimizeBarrierStep (page does not exist)") | This step will eventually remove extra unbreakable blocks. |
