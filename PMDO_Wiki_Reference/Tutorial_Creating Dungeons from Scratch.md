# Tutorial:Creating Dungeons from Scratch

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Creating_Dungeons_from_Scratch

This article is a manual on how to create a dungeon with its appropriate generation steps from scratch without using other dungeons as a template.

For a table summary of these instructions for future reference, see [Tutorial:Creating Dungeons from Scratch/Reference Table](https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Creating_Dungeons_from_Scratch/Reference_Table "Tutorial:Creating Dungeons from Scratch/Reference Table").

## Notes About This Guide

If details about how to configure particular steps are not included, assume that you are free to customize them based on what options you'd like for your dungeon. The specific steps are what is required as a baseline in order to configure everything with the default settings for PMDO. If you would like to learn more about the options available, please check out the pages on those steps.

**Format Note:** Most steps have priorities that they want set typically to certain values. These will be noted beside the step's name like [1], to avoid repetition.

## Dungeon Initialization

In PMDO, all dungeons are contained within a **zone**. Zones themselves have their own configuration which will not be covered in this tutorial, but more information about them can be found on the [zone](https://wiki.pmdo.pmdcollab.org/wiki/Zone "Zone") page.

Each zone can contain any number of **segments**. Segments are essentially different dungeons, with their own unique floor generation and rules.

To start creating your dungeon, go to **Segments** and press **Add**.

There's two main parts of the segment editor: **Floors** and **[Zone Steps](Zone%20Step.md "Zone Steps")**.

- "Floors" contain generation parameters (or "[Gen Steps](Floor%20Generation%20Step.md "Gen Steps")") for each *floor*.
- "Zone Steps" contain generation parameters for the entire *segment*.

## Segment Types

PMDO has some different methods of building a [segment](https://wiki.pmdo.pmdcollab.org/wiki/Segment "Segment"). They can be useful for constructing your dungeon.

### Layered Segment

This is the standard method used across PMDO for building segments. It simply defines all floors in an ordered list, and the floors on the dungeon will appear in that order. Most dungeons are built as layered segments.

### Dictionary Segment

Floors are mapped to numerical keys, allowing for there to be gaps in between segments. Not much of a use case for this one, it's very specialized.

### Singular Segment

The entire segment only consists of one defined floor. This is usually used for secret rooms kept on a separate segment.

### Range Dict Segment

Floors take up a specified range of the segment. This method is quite useful while working on the editor, as rather than having to duplicate the same floor multiple times, floors are simply defined as the floor at a certain numerical range. As such, it is recommended to use it over layered segment.

**USE WARNING:** The editor currently has a particular quirk that means if the start and end range of floors *ever* overlaps, the floors that aren't being edited **will be deleted without warning.** If you are using this method of construction, it is strongly recommended to **back up each floor** in a Layered Segment, so that if the worse happens and you save over a floor deletion, your data isn't lost! Just don't copy over the zone steps - the editor can act strangely if your segment has the same "name" as another segment, and initializing the zone steps is what actually does that...

## Zone Steps Overview

Zone steps are generation steps that apply to *all* floors present inside the segment. This includes certain tasks that are needed to make all floors in the segment function, which we would want in all dungeons. This can also save a lot of time by reducing duplication. For example, the step that is responsible for showing the floor name is usually done as a zone step, as in most cases the name is always shown in the same format.

While this could be done with a gen step on each floor, it requires us to remember to include that step on every floor, and if we wanted to change something for all floors, which would require us to edit every floor by hand to make the change. Instead, we can use a single zone step for the entire segment, and it will handle everything in one place.

If you *would* like to customize something by floor, you will have to use floor gen steps. Otherwise, it's recommended that you use zone steps where possible.

### Essential Zone Steps

The **[Show Floor Name](https://wiki.pmdo.pmdcollab.org/wiki/Show_Floor_Name "Show Floor Name")** [-6] zone step is responsible for showing the floor's name when you enter it. You can put the name within the "Name" field, using the placeholder `{0}` for the floor number.

If you plan on allowing rescues in your dungeon, you must also add the **[Handle Rescues](https://wiki.pmdo.pmdcollab.org/wiki/Handle_Rescues "Handle Rescues")** [2.1] step.

### Spawn Tables

We can add money, item, NPC, and [effect tile](https://wiki.pmdo.pmdcollab.org/wiki/Effect_tile "Effect tile") spawn tables to zone steps. This is where all of the information about those things will be kept, which the floor steps will later reference.

The names of each spawn table are, respectively, [Money Spawn Zone Step](https://wiki.pmdo.pmdcollab.org/wiki/Money_Spawn_Zone_Step "Money Spawn Zone Step") [1], [Item Spawn Zone Step](https://wiki.pmdo.pmdcollab.org/wiki/Item_Spawn_Zone_Step "Item Spawn Zone Step") [1.1], [Team Spawn Zone Step](https://wiki.pmdo.pmdcollab.org/wiki/Team_Spawn_Zone_Step "Team Spawn Zone Step") [1.2], and [Tile Spawn Zone Step](https://wiki.pmdo.pmdcollab.org/wiki/Tile_Spawn_Zone_Step "Tile Spawn Zone Step") [1.3]. Each will allow you to add individual entries to them, giving them a weight that modifies their percent chance of spawning and a range of floors they can appear on.

**Sanity Check:** When editing the Team Spawn Zone Step, make sure you add a team size of at least 1 that covers all floors! If you don't, nothing will be able to spawn.

### Spawn & Spread

Main article: [Using SpreadPlans](https://wiki.pmdo.pmdcollab.org/wiki/Using_SpreadPlans "Using SpreadPlans")

Spread plans are a kind of zone step that spawns a particular feature at a regular floor interval. This is often used in the demo game to guarantee the player will have certain resources as they progress through a dungeon. For example, in many longer dungeons, a spread plan is used to guarantee that certain essential items like [Apples](https://wiki.pmdo.pmdcollab.org/wiki/Apples "Apples") and [Leppa Berries](https://wiki.pmdo.pmdcollab.org/wiki/Leppa_Berries "Leppa Berries") will spawn every 3-4 floors. This way, even if a player gets unlucky and get no random Apples spawn, they still have enough food to complete the dungeon.

The step responsible for this, [Spread Step Zone Step](https://wiki.pmdo.pmdcollab.org/wiki/Spread_Step_Zone_Step "Spread Step Zone Step") [6.1], can spread features across the dungeon in general. It can perform almost any floor step spread across the floors based on its [spread plan](https://wiki.pmdo.pmdcollab.org/wiki/Spread_Plan "Spread Plan").

#### Spreading Items

If we just want a certain item to appear like in those dungeons, you select the Spawn List for your Spawns. Then, you add the [Random Spawn Step](https://wiki.pmdo.pmdcollab.org/wiki/Random_Spawn_Step "Random Spawn Step (page does not exist)"), specing the spawn as a Picker Spawner with args `<List Map Gen Context, Map Item>` to spawn an item. Then, adding to the **To Spawn** list, you select the Present Picker with args `<Map Item>` and pick the item you'd like to appear.

Finally, to spread it across floors, in **Spread Plan**, you select `Spread Plan Spaced`, giving it the range and spacing you'd like it to have.

#### Other Features

We can also allow other features to appear with spread steps. These are a little bit more advanced to configure, but the list of features includes: Monster Houses, Item Houses, Move Tutors, and Mysteriosity. For more information, see [Spread Step Zone Step](https://wiki.pmdo.pmdcollab.org/wiki/Spread_Step_Zone_Step "Spread Step Zone Step") and [Spread Houses](https://wiki.pmdo.pmdcollab.org/wiki/Spread_Houses "Spread Houses").

## Generation Type-Dependent Steps

There are two primary floor generation methods in PMDO: **Grid Floor Gen** and **Room Floor Gen**. This article will focus primarily on those methods. The steps required in each method are different - as such, when creating a floor, the first thing you should do is decide what generation method should be utilized by the floor. Follow just the instructions for the type you wish to use.

Grid floor generation creates a more classic dungeon where rooms are arranged on a grid, while room floor generation instead attaches its rooms and hallways to a starting room, disregarding any cell structure.

If you want a floor to be a specific map, **Load Gen** will be utilized instead.

Although more uncommon, **Chance Floor Gen** and **Stairs Floor Gen** are also available.

**Note:** Most fields for rooms and halls use the `Spawn List<>` type for their spawn tables.

### Grid Floors

[Grid of Rooms Generation](https://wiki.pmdo.pmdcollab.org/wiki/Grid_of_Rooms_Generation "Grid of Rooms Generation") generates the dungeon using a grid based system, creating cells of a specified size and placing a grid of them with specified dimensions.

#### Initialization

Grids are initialized using [Init Grid Plan Step](https://wiki.pmdo.pmdcollab.org/wiki/Init_Grid_Plan_Step "Init Grid Plan Step") [-5], where the initial dimensions of the grid are set up.

#### Room & Hall Generation

Once the grid is initialized, we must generate rooms on the floor with a [grid path step](https://wiki.pmdo.pmdcollab.org/wiki/Grid_Path_Steps "Grid Path Steps") [-4]. This is a family of different generation steps that will put the floor together in different ways. The most common path step is Grid Path Branch, which creates a "standard" dungeon of rooms generating in cells with halls connecting them. It should be noted that which grid path step you select modifies the character of your floor quite a bit, and as such you should consider which one to use carefully.

#### Modifying Rooms After Generation

Once everything has been generated, there are a few post generation changes we can use:

- [Connect Grid Branch Step](https://wiki.pmdo.pmdcollab.org/wiki/Connect_Grid_Branch_Step "Connect Grid Branch Step") [-4.1] will connect adjacent rooms together with halls.
- [Combine Grid Room Step](https://wiki.pmdo.pmdcollab.org/wiki/Combine_Grid_Room_Step "Combine Grid Room Step") [-4.2] based on the parameters you give it will merge cells into one single room.
- [Set Grid Defaults Step](https://wiki.pmdo.pmdcollab.org/wiki/Set_Grid_Defaults_Step "Set Grid Defaults Step") [-4.3] transforms a random percentage of the rooms into "dummy" 1x1 hallways. These halls will still be connected to, but will have no rooms, resulting in creating these long hallways.

#### Completing Generation

After all of the other generation steps, we finalize the rooms based on all of our generation steps. This is done with the [Draw Grid To Floor Step](https://wiki.pmdo.pmdcollab.org/wiki/Draw_Grid_To_Floor_Step "Draw Grid To Floor Step") [-3].

### Room Floors

[List of Rooms Generation](https://wiki.pmdo.pmdcollab.org/wiki/List_of_Rooms_Generation "List of Rooms Generation") does not use a cell system, and instead generates the dungeon using just the space it has.

#### Initialization

The initial settings of this generation type are initialized using the [Init Floor Plan Step](https://wiki.pmdo.pmdcollab.org/wiki/Init_Floor_Plan_Step "Init Floor Plan Step") [-3], which sets the dimensions of the floor.

#### Room & Hall Generation

Rooms and hallways are defined in the [Floor Path Branch](https://wiki.pmdo.pmdcollab.org/wiki/Floor_Path_Branch "Floor Path Branch") [-2] step. This determines each possible room and hall, and their chance of appearing.

### Mapped Room Floors

[Load Generation](https://wiki.pmdo.pmdcollab.org/wiki/Load_Generation "Load Generation") loads a pre-existing map as the floor. This is often used for things like boss rooms, which should always have the same layout. Mapped rooms use only one zone step, the [Mapped Room Step](https://wiki.pmdo.pmdcollab.org/wiki/Mapped_Room_Step "Mapped Room Step") [-7], which loads everything on that map into the floor.

### Stairs Floors

[Stairs Floor Generation](https://wiki.pmdo.pmdcollab.org/wiki/Stairs_Floor_Generation "Stairs Floor Generation") is usually not used in PMDO, since it's difficult to work with. This guide will not include information about it, since its use cases are so uncommon.

### Chance Floors

[Chance Floor Generation](https://wiki.pmdo.pmdcollab.org/wiki/Chance_Floor_Generation "Chance Floor Generation") allows you to randomly select one of the previous generation types. It can be used to make floors very unpredictable. To use this, you add different floor generations and configure them like you would for any other floor.

You can think about it like a spawn table of floors - and since different floors use different FloorGen methods, knowledge of how to generate other types of floors is sufficient enough for Chance Floor Generation.

### Final Steps For Grid & Room Gen

These steps are required for both grid and room floor generation.

We want to finalize our generated floor plans. We do this using [Draw Floor To Tile Step](https://wiki.pmdo.pmdcollab.org/wiki/Draw_Floor_To_Tile_Step "Draw Floor To Tile Step") [-1], which is what draws everything that has been generated to the floor. We also generate unbreakable tiles around the whole floor using [Unbreakable Border Step](https://wiki.pmdo.pmdcollab.org/wiki/Unbreakable_Border_Step "Unbreakable Border Step") [0.1].

Finally, we need to place the player's spawn point and the stairs. This is done with the [Floor Stairs Step](https://wiki.pmdo.pmdcollab.org/wiki/Floor_Stairs_Step "Floor Stairs Step") [2].

## General Floor Steps

These steps are universal and not exclusive to certain generation types.

### Essential Steps

The [Map Data Step](https://wiki.pmdo.pmdcollab.org/wiki/Map_Data_Step "Map Data Step") [-6] sets all of the basic data of the floor up. Note that the typical **Time Limit** is 15000 turns for most dungeons.

The [Mob Spawn Settings Step](https://wiki.pmdo.pmdcollab.org/wiki/Mob_Spawn_Settings_Step "Mob Spawn Settings Step") [1.2] sets up basic settings for mob respawns. Note that the separate "Priority" field here should be set to 15. Then, you should select `Respawn From Eligible Event` in the "Respawn" field, configuring "Max Foes" and "Respawn Time" to your liking.

### Post-Room Terrain Steps

These steps add more varied [terrain](Terrain.md "Terrain") that isn't just floor and wall tiles.

[Perlin Water Step](https://wiki.pmdo.pmdcollab.org/wiki/Perlin_Water_Step "Perlin Water Step") [3] will spawn the specified terrain in valid areas (depending on its filters) using Perlin noise, spreading it randomly.

Similarly, [Blob Water Step](https://wiki.pmdo.pmdcollab.org/wiki/Blob_Water_Step "Blob Water Step") [3] spawns the specified terrain in valid areas, but in the style of blobs.

Since Perlin noise can be rather messy sometimes, there are a few steps that are used to clean it up. The [Drop Diagonal Block Step](https://wiki.pmdo.pmdcollab.org/wiki/Drop_Diagonal_Block_Step "Drop Diagonal Block Step") [3.1] and [Erase Isolated Step](https://wiki.pmdo.pmdcollab.org/wiki/Erase_Isolated_Step "Erase Isolated Step") [3.2] are used to fill in adjacent diagonal tiles and remove blobs of terrain not accessible from the main path respectively.

### Texture Steps

These steps configure the dungeon tileset.

[Map Texture Step](https://wiki.pmdo.pmdcollab.org/wiki/Map_Texture_Step "Map Texture Step") [4] is for maps that only have ground tiles, walls, and exactly one other secondary tile (such as water).

[Map Dict Texture Step](https://wiki.pmdo.pmdcollab.org/wiki/Map_Dict_Texture_Step "Map Dict Texture Step") [4] is for maps that have more than three tile textures, such as floors that have grass, or floors with both lava and water.

### Spawn Steps

These steps will spawn the money, items, effect tiles, and NPCs we defined earlier in the zone steps. Spawn steps may be used in a variety of ways. This section will use the parameters that are common across most dungeons.

Note that, unless specified otherwise, the "Spawn" field will be set as `Context Spawner<,>`. Then, you select the amount range of how much will spawn. This allows it to reference the tables we set up in the Zone Steps.

It is also typical to just add `RoomFilterConnectivity: Main` to the "Filters", but this may change depending where you would like things to spawn.

#### Money

Money is typically spawned in dead end rooms, which uses the [Terminal Spawn Step](https://wiki.pmdo.pmdcollab.org/wiki/Terminal_Spawn_Step "Terminal Spawn Step") [6]. Set the args to `<Map Gen Context, Money Spawn>`.

#### Items

Items are set to spawn depending how far they are from the player's position by default. This is done with the [Due Spawn Step](https://wiki.pmdo.pmdcollab.org/wiki/Due_Spawn_Step "Due Spawn Step") (6.1). Set **Success Percent** to 25, which is the chance that items will be more likely to spawn depending on the distance from the player.

#### Traps

Traps are spawned using the [Random Room Spawn Step](https://wiki.pmdo.pmdcollab.org/wiki/Random_Room_Spawn_Step "Random Room Spawn Step") [5]. Choose the args `<Map Gen Context, Effect Tile`. Set **Success Percent** to 100, so that way all the traps specified in the range will spawn.

##### Wonder Tiles

Wonder tiles are currently spawned in a bit of a unconventional way, as we don't want them to be included within the pool of traps.

Selecting the [Spaced Room Spawn Step](https://wiki.pmdo.pmdcollab.org/wiki/Spaced_Room_Spawn_Step "Spaced Room Spawn Step") [5], choose the args `<Map Gen Context, Effect Tile`. Then, to spawn them, select the `Picker Spawner<,>`, with the `Looped Rand` picker and the `Spawn List` spawner. Add the Wonder Tile to this.

Finally, choose how many wonder tiles you'd like to spawn. In the Amount Spawner, select `Rand Range` and set the range to what you'd like the range of Wonder Tile amounts to be.

#### Initial Mob Spawning

We want the map to start with some mobs being spawned on it, using the [Place Random Mobs Step](https://wiki.pmdo.pmdcollab.org/wiki/Place_Random_Mobs_Step "Place Random Mobs Step") [6.2]. Set **Spawn** to the `Team Context Spawaner` to use the tables, and then select the amount of mobs we'd like to spawn. Modify **Clump Factor** depending on how much you want mobs to clump - Smaller values means they spread out more evenly, while larger means they clump together more.

### Other Useful Gen Steps

These are steps that are often useful for common dungeon features, but not necessarily universal.

[Default Map Status Step](https://wiki.pmdo.pmdcollab.org/wiki/Default_Map_Status_Step "Default Map Status Step") [-6] sets default weather in the dungeon.

[Terrain Spawn Step](https://wiki.pmdo.pmdcollab.org/wiki/Terrain_Spawn_Step "Terrain Spawn Step") [6.1] is often used to spawn items in certain tiles, such as tall grass or walls.

[Detect Isolated Stairs Step](https://wiki.pmdo.pmdcollab.org/wiki/Detect_Isolated_Stairs_Step "Detect Isolated Stairs Step") [7] is a debug step, but is useful to remember to include as it'll notify you if your stairs ever generate somewhere unreachable from the spawn point.

## Finishing Touches

The dungeon has been created, but it isn't fully playable in game yet. To add it to a [ground map](https://wiki.pmdo.pmdcollab.org/wiki/Ground_map "Ground map"), see [Making Dungeons Accessible from a Ground Map](Tutorial_Making%20Dungeons%20Accessible%20from%20a%20Ground%20Map.md "Making Dungeons Accessible from a Ground Map"). Finally, there is some basic scripting required for the zone to function - see [Basic Dungeon Scripting](https://wiki.pmdo.pmdcollab.org/wiki/Basic_Dungeon_Scripting "Basic Dungeon Scripting") for details.
