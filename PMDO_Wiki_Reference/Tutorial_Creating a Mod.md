# Tutorial:Creating a Mod

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Creating_a_Mod

When making edits to the game, it is best to do them within a mod, so that the changes can be undone and redone to the base game. This tutorial will go over the steps needed to create a new mod, and link to other more specific tutorials for maps, ground maps, etc. Before you start, you must open the game in [Dev Mode](Dev%20Mode.md "Dev Mode")

## Creating a Mod

Access the Mods tab in the developer panel. You can see we currently have no mods.

[![](/wiki/images/9/95/DevPanel_Mod.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Mod.png)

Create a new mod using the Add New button.

[![](/wiki/images/0/02/DevPanel_Mod_Create.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Mod_Create.png)

Give it whatever name you want. We will go with “Test Mod”.
In this game, mods are split into two types:
Quests are mods that have their own save files, and only one can be active at a time. This can be used for side stories like in Explorers of Sky. On the menu they are even titled as “Special Episodes”
Mods do not need their own save files, and multiple can be active at one time. These are meant for small changes such as altering the starter list, the effects of items, or adding extra dungeons.

Keep the mod type at “Mod”, and click OK.

[![](/wiki/images/8/80/DevPanel_Mod_Added.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Mod_Added.png)

You will find a new mod created as a subcategory under the “[None]” mod.

[![](/wiki/images/4/43/TestMod_Folder.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:TestMod_Folder.png)

You will also find a folder for the mod, generated in the MODS folder.

[![](/wiki/images/5/56/TestMod_Folder_Inside.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:TestMod_Folder_Inside.png)

Within the mod, you should find these subfolders and a Mod.xml file.
The basic data for the mod name, ID, version and mod type is stored in this xml.

Switch to the mod. Game will automatically restart.

[![](/wiki/images/a/a3/DevPanel_Mod_Switched.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Mod_Switched.png)

Note the Current Mod has changed. However, nothing will look different in the game right now, since no changes have been made. If you were to play through the game, it would be identical to vanilla in every way except for the indicator on the top menu:

[![](/wiki/images/7/75/TestMod_Start.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:TestMod_Start.png)

## Altering Data

The easiest way to see a change take effect is to alter some data. In this example, we will alter a Pokemon’s name.

Go to the Data tab, choose Monster, and double click on Charmander to edit it.

[![](/wiki/images/6/60/DevPanel_Data.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Data.png)
[![](/wiki/images/f/fa/TestMod_Edit_Search.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:TestMod_Edit_Search.png)

There are a lot of attributes to edit, but the one we are interested is Name.

[![](/wiki/images/3/3b/TestMod_Edit.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:TestMod_Edit.png)

Click on “Edit” for Name.

[![](/wiki/images/2/2b/TestMod_Edit_String.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:TestMod_Edit_String.png)

Change the name to something else, and click OK.
Click OK on the parent menu to save its changes as well.

[![](/wiki/images/6/6a/TestMod_Edit_Done.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:TestMod_Edit_Done.png)

This change is now reflected in the Pokemon list; you have successfully altered data within the mod!
You can see this in action in the starter selection.

[![](/wiki/images/a/a4/TestMod_Edit_Example.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:TestMod_Edit_Example.png)

Changes made within a mod are confined to that mod. If you switch back to no mod in “[None]”, Charmander’s name will revert to normal.

Whenever you make a change in a mod, that file is saved to the mod folder itself. You can see Charmander’s changed file in MODS/Test\_Mod/Data/Monster:

[![](/wiki/images/f/f9/TestMod_Folder_Edit.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:TestMod_Folder_Edit.png)

This makes it easy to revert changes within your mod as well: to change charmander back, simply remove charmander.json and index.idx.

If you want to share the mod with someone else, you will simply need to zip the mod folder and send it to them. They will simply need to place the folder in the MODS folder.

[![](/wiki/images/9/9a/TestMod_Access.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:TestMod_Access.png)

From there, they will be able to select the mod under the main menu option “Special Episodes” (If the mod was of type Quest) or Mods (If the mod was of type Mod).

## Tips

You can start the game automatically set to your mod with a command line flag:

Windows:

```
PMDO.exe -dev -quest Test_Mod
```

Linux/Mac:

```
./PMDO -dev -quest Test_Mod
```

Whether your mod is of type Mod or Quest, in order to edit it you must set it to the current quest as done above.

As the game gets updated, so too does the way the data is stored. PMDO automatically converts data stored in previous versions when it loads them. This means that in order to update your mod to the latest version of the game, you should load all mod files and then save them. This can be done by running Reserialize:

Windows:

```
PMDO.exe -dev -quest Test_Mod -reserialize all
```

Linux/Mac:

```
./PMDO -dev -quest Test_Mod -reserialize all
```

For advice on how to mod specific types of data, such as Maps, Dungeons, Items and more, visit the [Category:Modding Data](https://wiki.pmdo.pmdcollab.org/wiki/Category:Modding_Data "Category:Modding Data") category. If you want to modify sprites, visit the [Category:Modding Assets](https://wiki.pmdo.pmdcollab.org/wiki/Category:Modding_Assets "Category:Modding Assets") category. If you want one tutorial to start with specifically, is recommended you start with [Creating Ground Maps](Tutorial_Creating%20Ground%20Maps.md "Creating Ground Maps").
