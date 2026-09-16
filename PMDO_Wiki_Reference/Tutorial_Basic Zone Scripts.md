# Tutorial:Basic Zone Scripts

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Basic_Zone_Scripts

This article is a guide on how to initalize the basic scripts for a zone (aka dungeon) script. Most of the complexity lies in the `ExitSegment` function.

## About the File

When creating a zone, PMDO automatically creates a corresponding script file for the zone. These files can be found by going into the mod's root folder, and then following the path `Data/Script/[namespace]/zone`. Then, to find the script file for a dungeon, select the folder with the corresponding name. Inside this will be a file called `init.lua`, where all of the data for the zone is contained.

There are four functions present in this file:

- `Init`, which runs always when initializing the zone, aka whenever it is loaded
- `Rescued`, which runs when being rescued by another team
- `EnterSegment`, which runs when entering a segment
- `ExitSegment`, which runs when exiting a segment

All the functions are indexed into a table named after the zone's internal name. For example, with a zone named `cave`, the init function is defined as `cave.Init(zone)`.

## Initializing

This gives the game instructions on what to do when initalizing the dungeon.

Most zones do not require any unique steps to initialize them, unless custom scripting is implemented. Instead some debug lines are executed:

```
DEBUG.EnableDbgCoro() --Enable debugging this coroutine
PrintInfo("=>> Init_[zoneID]")
```

These are just to make debugging easier in case something does go wrong with the scripting.

## Rescues

This gives the game instructions on what to do when the player has been rescued.

Rescues are simply handled with a single line in `Rescued`:

```
COMMON.Rescued(zone, name, mail)
```

This enables the game to execute the function that completes the rescue.

## Entering a Segment

This gives the game instructions for what to do when entering a segment.

`EnterSegment` typically has no extra scripting, other than cases where the player is rescuing another team:

```
  if rescuing ~= true then
    COMMON.BeginDungeon(zone.ID, segmentID, mapID)
```

## Exiting Dungeon Segments

This gives the game instructions for what to do when exiting a segment. This is the primary function that requires scripting, because otherwise the game will simply stop execution and softlock if not given instructions.

This function receives the following information when exiting a segment, storing them in variables:

- `zone`: The zone we currently exited.
- `result`: The outcome of the dungeon exploration - Most relevant, this lets us check whenever the segment was cleared or if the player was defeated.
- `rescue`: Tells us whenever we're rescuing someone or not. This is true if we are rescuing, and false if we are not.
- `segmentID`: A number that tells us what segment of the dungeon we're exiting from, based on the ordering in the mod editor. It starts at 0 and counts up by one per next segment.
- `mapID`: Says the map ID that we just exited from. Isn't referenced most of the time.

In order to tell the game what to do, we need to check if these variables have a certain value.

### An Example

Let's take a look at how the `ExitSegment` function of *Faded Trail* works. We use a `if...elseif...else` block in order to branch through our different choices.

First, we want to check if we are in rescue mode, and succeeded on the rescue:

```
local exited = COMMON.ExitDungeonMissionCheck(result, rescue, zone.ID, segmentID)
  if exited == true then
    --do nothing
```

You only require this part of the block if your dungeon should support rescues.

If exited is false, then we continue along the statement. This branch is taken if the dungeon was not cleared.:

```
  elseif result ~= RogueEssence.Data.GameProgress.ResultType.Cleared then
    COMMON.EndDungeonDay(result, SV.checkpoint.Zone, SV.checkpoint.Segment, SV.checkpoint.Map, SV.checkpoint.Entry)
```

The dungeon day is ended, and the player is sent back to their last checkpoint with punishments applied.

If the above is false, then we enter into a branch that holds the results if we cleared the dungeon. So, all other results under this one else assume the player has cleared the dungeon.

*Faded Trail* is a dungeon with an alternative dungeon segment that the player can take. We would like to do something different if the player clears the alternative segment. The default segment, *Faded Trail*, is segment 0, while the alternative segment, *Hidden Trail*, is segment 1.

For segment 0, we just want to send the player to the forest camp:

```
    if segmentID == 0 then
      COMMON.EndDungeonDay(result, 'guildmaster_island', -1, 4, 0)
```

For segment 1, we want the player to go back to the island entrance and unlock a new dungeon:

```
    elseif segmentID == 1 then
      COMMON.UnlockWithFanfare('faultline_ridge', true)
      COMMON.EndDungeonDay(result, 'guildmaster_island', -1, 1, 3)
```

Finally, we make our last else be a fallback function that sends the player to their last checkpoint:

```
    else
      PrintInfo("No exit procedure found!")
	  COMMON.EndDungeonDay(result, SV.checkpoint.Zone, SV.checkpoint.Segment, SV.checkpoint.Map, SV.checkpoint.Entry)
    end
```

### Blueprint

Putting it together, we get this psuedocode blueprint of what occurs while running `ExitSegment`:

```
  --first check for rescue flag; if we're in rescue mode then take a different path
  local exited = COMMON.ExitDungeonMissionCheck(result, rescue, zone.ID, segmentID) --check if we cleared while doing a rescue
  if exited == true then
        --do nothing; this is a dummy branch to stop us from going through the other branches
   elseif result ~= RogueEssence.Data.GameProgress.ResultType.Cleared then -- resolves true if the dungeon was not cleared
        --end the dungeon day by sending the player back to their last checkpoint, since they didn't clear the dungeon
         COMMON.EndDungeonDay(result, SV.checkpoint.Zone, SV.checkpoint.Segment, SV.checkpoint.Map, SV.checkpoint.Entry)
   else -- we didn't resolve true for being in rescue or losing the dungeon, so we must have cleared the dungeon
         -- now we will check what segment we took, so we can make the game do what we want to depending on the segment
         if segmentID == 0 then
            -- do things for exiting on segment 0
         elseif segmentID == 1 then
            -- do things for exiting on segment 1
         elseif .... -- continue checking likewise for all the segments we have
         else -- this is a fallback branch, in case we went through all of the branches and hit nothing (which should not happen!)
                 PrintInfo("No exit procedure found!")
                 -- just send the player to their last checkpoint
	             COMMON.EndDungeonDay(result, SV.checkpoint.Zone, SV.checkpoint.Segment, SV.checkpoint.Map, SV.checkpoint.Entry)
         end
   end
```
