# Floor Generation Overview

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Floor_Generation_Overview

Floor generation is performed as a list of steps, which allows a developer to customize their floor layout at every part of the pipeline. This page covers the basics of what each step is responsible for and why it is needed.

For information on what steps are required to create a floor from scratch, see [Creating Dungeons from Scratch](Tutorial_Creating%20Dungeons%20from%20Scratch.md "Creating Dungeons from Scratch").

## Overview

A dungeon map can be generated without items, enemies, or traps. But at a bare minimum, a dungeon map must generate [terrain](Terrain.md "Terrain") (plus entrance/exit) in order to complete without errors. There are 4 main options on how to do this.

| Type | Example | Description | Usage |
| --- | --- | --- | --- |
| [Grid of Rooms Generation](https://wiki.pmdo.pmdcollab.org/wiki/Grid_of_Rooms_Generation "Grid of Rooms Generation") | [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:FloorGen_Grid_Tiles.png "Frameless") | Rooms generate inside of a grid with cells. | Most dungeon floors |
| [List of Rooms Generation](https://wiki.pmdo.pmdcollab.org/wiki/List_of_Rooms_Generation "List of Rooms Generation") | [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:FloorGen_Floor_Tiles.png "Frameless") | Rooms generate freely, spreading out from defined halls and rooms. | Uncommon, but used for some dungeon floors |
| [Stairs Floor Generation](https://wiki.pmdo.pmdcollab.org/wiki/Stairs_Floor_Generation "Stairs Floor Generation") | [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:FloorGen_Tiles_Tiles.png "Frameless") | Tiles are generated directly on a base of walls. | Rare, primarily debugging |
| [Load Generation](https://wiki.pmdo.pmdcollab.org/wiki/Load_Generation "Load Generation") | Anything! | Load a pre-made map. | Secret rooms, final floor treasure rooms |

To learn more about the technical details of how they generate, visit their pages.

## About Steps

Floor generation is broken down into an ordered list of steps, each assigned a priority. The priority determines at what point in the generation process the step should be performed, with a lower number means a step will execute earlier. While these priority numbers do not need to be obeyed for modding, they are the numbers that base PMDO uses.

Priority becomes especially handy when using [Zone Steps](Zone%20Step.md "Zone Steps") to plan out dungeon features across multiple floors, rather than a single one.

To view each step that exists and what they do, see [Floor Generation Steps](https://wiki.pmdo.pmdcollab.org/wiki/Floor_Generation_Steps "Floor Generation Steps").

## Priority Brackets

Each range of priority is generally used to perform different tasks. These are each bracket present in PMDO, and what they are generally used for.

| Priority | Bracket | Purpose |
| --- | --- | --- |
| -7 | File Load | Loading a pre-loaded map. |
| -6 | Floor Data | Setting the initial data of a floor. |
| -5 | Grid Creation | Initializing the grid for [GridFloorGen](https://wiki.pmdo.pmdcollab.org/wiki/GridFloorGen "GridFloorGen"). |
| -4 | Grid Path Generation | Generating the initial rooms and halls for [GridFloorGen](https://wiki.pmdo.pmdcollab.org/wiki/GridFloorGen "GridFloorGen"). |
| -4.1 | Grid Special Generation | Generates special rooms outside of the general generation for [GridFloorGen](https://wiki.pmdo.pmdcollab.org/wiki/GridFloorGen "GridFloorGen"). |
| -3 | Room List Creation | Initializing the floorpan for [RoomFloorGen](https://wiki.pmdo.pmdcollab.org/wiki/RoomFloorGen "RoomFloorGen"). |
| -2 | Room List Generation | Generating the rooms and halls for [RoomFloorGen](https://wiki.pmdo.pmdcollab.org/wiki/RoomFloorGen "RoomFloorGen"). |
| -2.1 | Vault Pregen | Generation prior to special gen for [RoomFloorGen](https://wiki.pmdo.pmdcollab.org/wiki/RoomFloorGen "RoomFloorGen"). |
| -2.2 | Room List Special | Generates special rooms for [RoomFloorGen](https://wiki.pmdo.pmdcollab.org/wiki/RoomFloorGen "RoomFloorGen"). |
| -2.5 | Pre-Vault Clamp | Clamping of the map for vaults.**(unverified)** |
| -1 | Init Map | Initialize the size of the map. |
| 0 | Draw Tiles | Draw tiles to the actual map. |
| 0.1 | Unbreakable Layers | Create the unbreakable border around the map borders. |
| 0.2 | Floor Extras 1 | Add extra floor changes. This is one layer to perform them for priority reasons. Usually has vaults and barriers. |
| 0.3 | Floor Extras 2 | Add extra floor changes. This is one layer to perform them for priority reasons. Usually has tunnels. |
| 1 | Spawn Tables | Defining spawn tables for the floor. |
| 2 | Exits | Placement of entrances and exists. |
| 2.1 | Save Variables | Things that change depending on save variabes, such as rescues. |
| 2.2 | Sealed Detours | Generation for sealed detours. |
| 3 | Extra Terrain | The placement of extra terrain types, such as water and tall grass. |
| 3.1 | Drop Diagonal | Uses [DropDiagonalBlockStep](https://wiki.pmdo.pmdcollab.org/wiki/DropDiagonalBlockStep "DropDiagonalBlockStep") on the extra terrain if needed. |
| 3.2 | Erase Isolated | Uses [EraseIsolatedStep](https://wiki.pmdo.pmdcollab.org/wiki/EraseIsolatedStep "EraseIsolatedStep") on the extra terrain if needed. |
| 4 | Textures | Assigns textures to the map. At 4 because textures were formerly placed during this step, but are now placed after all steps are done. |
| 4.1 | Houses | Placement of [houses](https://wiki.pmdo.pmdcollab.org/wiki/Houses "Houses"). |
| 4.2 | Shops | Placement of [shops](https://wiki.pmdo.pmdcollab.org/wiki/Shops "Shops"). |
| 5 | Tile Spawns | Spawning tiles, such as traps. |
| 5.1 | Compass Spawns | The spawning of [compass tiles](https://wiki.pmdo.pmdcollab.org/wiki/Compass_tiles "Compass tiles (page does not exist)") specifically. |
| 6 | Spawn Money | The spawning of money. |
| 6.1 | Spawn Items | The spawning of items. |
| 6.2 | Spawn Extra Items | The spawning of additional items with other steps. |
| 6.2 | Spawn Mobs | The spawning of mobs. |
| 6.2.1 | Spawn Extra Mobs | The spawning of additional mobs outside of the base spawn steps. |
| 7 | Debug Checks | Steps that check the dungeon for issues, throwing an error if one is found. Useful for [Stress Testing](https://wiki.pmdo.pmdcollab.org/wiki/Stress_Testing "Stress Testing (page does not exist)"). |
