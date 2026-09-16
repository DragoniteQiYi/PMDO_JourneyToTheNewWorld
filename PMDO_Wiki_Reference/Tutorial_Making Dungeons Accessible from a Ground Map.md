# Tutorial:Making Dungeons Accessible from a Ground Map

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Making_Dungeons_Accessible_from_a_Ground_Map

This tutorial goes over the steps of creating a new EMPTY dungeon, and making it accessible from the rest of the game. If you want to learn how to edit details of the dungeon itself, read the [Creating Dungeons](Tutorial_Creating%20Dungeons.md "Creating Dungeons") tutorial.
Before starting, it is highly recommended you begin with your game set to a mod in [Modding Intro](https://wiki.pmdo.pmdcollab.org/wiki/Modding_Intro "Modding Intro"), so that you’re editing a mod instead of the base game. The tutorial will move forward with that assumption.

## Adding the Dungeon

Begin by opening up the Zones list:

[![](/wiki/images/8/8a/AddingDungeons_ZoneListNew.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_ZoneListNew.png)

Click “Add” to add a new entry at the bottom.

[![](/wiki/images/8/8b/AddingDungeons_New.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_New.png)

Click OK for now.

Since the details of the dungeon aren’t important and we just want it to be accessible, we will copy the data from Faded Trail into this dungeon.

[![](/wiki/images/4/4e/AddingDungeons_Copy.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_Copy.png)

You can do this by opening up Faded Trail and right-clicking the window. It will give you the option to copy the data of the entire dungeon.

[![](/wiki/images/c/ca/AddingDungeons_Paste.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_Paste.png)

Then, open up the new dungeon and paste the data; all of the data will be filled.

[![](/wiki/images/2/22/AddingDungeons_PasteComplete.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_PasteComplete.png)

Let’s change the name to differentiate this dungeon.

[![](/wiki/images/3/39/AddingDungeons_Renamed.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_Renamed.png)
[![](/wiki/images/0/03/AddingDungeons_ListComplete.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_ListComplete.png)

## Accessing the Dungeon

With the dungeon created, it needs to be made accessible from an overworld map.

[![](/wiki/images/d/d5/AddingDungeons_DungeonMenu.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_DungeonMenu.png)

Let’s make it unlockable from Forest Camp. To do this, we need to edit the script of Forest Camp.
Navigate to `Data/Script/ground/` in your PMDO folder.

[![](/wiki/images/6/6d/AddingDungeons_ScriptFolder.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_ScriptFolder.png)

Copy the forest\_camp folder, and paste the copy in the Data/Script/ground/ folder in your mod’s folder.

[![](/wiki/images/f/ff/AddingDungeons_ScriptCopyTo.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_ScriptCopyTo.png)

The scripts in the mod’s folder will overwrite the scripts in the base folder when the mod is running.

Next, Go into the forest\_camp folder, and open `init.lua` in a text editor (Notepad++ recommended)

[![](/wiki/images/e/ea/AddingDungeons_Script.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_Script.png)

We are going to edit the north exit to include the new dungeon.
Scroll down to the function forest\_camp.North\_Exit\_Touch

[![](/wiki/images/0/0e/AddingDungeons_ScriptNorthExitTouch.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_ScriptNorthExitTouch.png)

The dungeon\_entrances variable defines a list of dungeons (by index) that the North Exit can take the player to. Add the number 50 to the list, for Gauntlet Cave.

[![](/wiki/images/2/24/AddingDungeons_ScriptAdded.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_ScriptAdded.png)

Save the file.

To bring these changes into effect, either restart the game or reload the scripts. You can use the Reload button in the Scripts tab:

[![](/wiki/images/0/0b/DevPanel_Script.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Script.png)

If you enter Forest Camp from the title screen using the developer warp, you will be able to access the dungeon (as well as all other dungeons available in the north exit).

[![](/wiki/images/d/dd/AddingDungeons_DungeonMenuFull.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_DungeonMenuFull.png)

However, if you were to play this mod legitimately, you would find that the dungeon will not appear in the selection menu, and there is no way to unlock it.

This is because the debug save file that is created from the title screen is made with all dungeons automatically unlocked.

To make this dungeon accessible legally, we must call a script to unlock it.

## Unlocking the Dungeon

There are several ways to unlock a dungeon once it has been added to an exit.
If you just want to test the dungeon from a non-debug save file, run this command in the Script tab:

```
GAME:UnlockDungeon(<dungeon_id>)
```

You can also unlock a dungeon by making it available the moment you reach the hub map for it. Take a look at the init.lua script in Data/Script/ground/forest\_camp, and scroll to the bottom of forest\_camp.Enter:

```
  GAME:UnlockDungeon(3)
  GAME:UnlockDungeon(36)
```

With these statements, the dungeons for Faded Trail and Bramble Woods are automatically unlocked when you enter the ground map.

The two methods above are trivial; we will go over a different technique to unlocking that will prove more useful: unlocking the dungeon when completing dungeon #36: Bramble Woods.

Navigate to `Data/Script/Zone/` in your PMDO folder.

[![](/wiki/images/8/8f/AddingDungeons_ScriptZoneFolder.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_ScriptZoneFolder.png)

Copy the folder for zone\_36, and paste the copy in the `Data/Script/zone/` folder in your mod’s folder.

[![](/wiki/images/f/f5/AddingDungeons_ScriptZoneCopyTo.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_ScriptZoneCopyTo.png)

The result should look like this.
Open the folder zone\_36, and open `init.lua` in a text editor (Notepad++ recommended)

[![](/wiki/images/2/20/AddingDungeons_ScriptZoneEdit.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_ScriptZoneEdit.png)

ExitSegment currently checks to see if we completed the dungeon within a rescue mission (Line 30)
Then it checks to see if the outcome of the segment wasn’t a success (Line 32). This block is for cases like fainting in a dungeon, escaping, or timing out due to wind.
Lastly, after all those checks, we know that the player has completed the segment (Line 34).
Within this block, we check which segment the player cleared, and act accordingly.
We are interested in Line 38:

```
COMMON.UnlockWithFanfare(37, true)
```

This line unlocks Sickly Hollow after the player has completed the Bramble Thicket path of the dungeon. That path has a segmentID of 1, while the main path has a segmentID of 0.
You can see that unlike the code for segment 1’s completion, the code for segment 0 just sends the player out of the dungeon. Line 36:

```
COMMON.EndDungeonDay(result, 1, -1, 3, 2)
```

Modify this code such that we unlock our new dungeon, dungeon #51, before ending the adventure:

```
COMMON.UnlockWithFanfare(50, true)
COMMON.EndDungeonDay(result, 1, -1, 3, 2)
```

Save the scripts and reload them, and then play the game legitimately until you complete Bramble Woods’s main path.

[![](/wiki/images/6/60/AddingDungeons_TestCompletion.gif)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_TestCompletion.gif)

You should then see your new dungeon unlocked.

[![](/wiki/images/d/df/AddingDungeons_DungeonMenuComplete.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AddingDungeons_DungeonMenuComplete.png)
