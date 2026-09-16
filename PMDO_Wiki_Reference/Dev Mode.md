# Dev Mode

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Dev_Mode

PMDO has a secret developer mode that can be used to cheat, examine, and mod the game.
Start PMDO in this mode using the following command:

Windows:

```
PMDO.exe -dev
```

Unix:

```
./PMDO -dev
```

You can also run the `dev.bat` file to start without the command line.

## Hotkeys

- F1 shows diagnostic information. This will show FPS, version number, current position, animation, and hitboxes. This is also usable outside of dev mode but will only show FPS and version number.
- Shift+Up/Down warps to the next and previous floors of the dungeon, respectively.
- Shift+Left/Right warps to the next and previous segments of the dungeon. A dungeon may be split up into segments such as Magma Cavern and Deep Magma Cavern.
- Shift+Right Click will warp the player to the location clicked.
- F2 pauses the game.
- F3 advances the frame when the game is paused.
- F4 is a test button used by programmers to quickly test a feature. Don’t worry about this.
- F5 slows down the game.
- F6 speeds up the game.
- F8 mutes the music, and unmutes it when muted.
- F9 turns on FreeCam mode, where the camera can be moved. In dungeons, it turns on SeeAll mode.
- F11 takes a screenshot of the ENTIRE map, useful for showcasing maps. All characters, objects, and currently active VFX are included. The screenshot is saved to the SCREENSHOT/ subfolder.
- F12 warps the player to the debug ground map using their current save file. If no save file exists, a debug file is created (but not saved)
- F1+F12 warps the player to the debug room. Unlike F12, it send the player to the debug dungeon map.
- CTRL+F12 soft resets to the title screen.
- CTRL+Cancel clears textboxes and menus to skip text. Cancel is the Z key by default.

## Dev Panel

This contains the main controls to modify the game. They are separated into tabs.

### Game

Often used to cheat and test in dungeons.

[![](/wiki/images/e/e8/DevPanel_Game.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Game.png)

- Hide Objects: Hides items and traps. In ground maps, objects are hidden.
- Hide Sprites: Hides Pokemon. Often used for screenshots.
- Create Clone: Creates a (Hostile) clone of your current character in your current location.
- Clear All Foes: Removes all enemies from the map.
- Skill List: Allows you to learn a [move](https://wiki.pmdo.pmdcollab.org/wiki/Move "Move") or give it to foes.
- Ability list: Allows you to gain an [ability](https://wiki.pmdo.pmdcollab.org/wiki/Ability "Ability") or give it to foes.
- Status List: Allows you to take on a status effect.
- Item List: Allows you to spawn [items](https://wiki.pmdo.pmdcollab.org/wiki/Items "Items") in dungeons.

### Player

Often used to cheat in dungeons, or test animations.

[![](/wiki/images/8/80/DevPanel_Player.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Player.png)

- Lv.: Sets the current player’s level. Updates in real time.
- Reroll: Updates the current player’s moveset to the latest naturally learned moves at the current level.
- Species/Form/Skin/[Gender](https://wiki.pmdo.pmdcollab.org/wiki/Gender "Gender"): Change the player’s current species/form/shininess/gender.
- Animation: Change the player’s current animation.

### Travel

Used to instantly warp to needed locations.

[![](/wiki/images/4/4f/DevPanel_Travel.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Travel.png)

- Areas are organized into Zones.
- Each zone has a list of Structures, plus a list of Ground Maps.
- Ground Maps are the hub maps with free movement.
- Each Structure contains a list of floors.
- You can choose to enter either a Ground map using Enter Ground, or a dungeon floor using Enter Map.

### Data

Used to edit maps, items, Pokemon, etc.

[![](/wiki/images/6/60/DevPanel_Data.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Data.png)

### Sprites

Used to the graphics of the game.

[![](/wiki/images/d/d1/DevPanel_Sprites.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Sprites.png)

- Char Sprites: Pokemon sprites in dungeons/overworld.
- Portraits: Character portraits in dialogue.
- Particles: Most attack graphics.
- Beams: Used in attacks that shoot continuous beams, plus columns of light used for sending home.
- Backgrounds: Used in the title screen, and maps with parallax backgrounds.
- Emotes: Emote animations. Includes status effect icons.
- Tiles: All tilesets. Does not include autotiles (which are in the Data tab).
- Items: Item Sprites
- Objects: Tree stumps, signs, traps, etc.

### Script

A lua command prompt to enter custom commands.

[![](/wiki/images/0/0b/DevPanel_Script.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Script.png)

- Reload Scripts: Reloads all lua scripts with your edits without needing to restart the game.
- Text Test: Allows you to test a dialogue box with sample text. For translators.

Command box controls:

- Type in a lua script command to run it directly on the game.
- Use TASK:BranchCoroutine(<your function here>) to call coroutines.
- SHIFT+Up/Down to scroll past commands.
- SHIFT+Enter to enter a multiline command.

### Mods

Controls which mod the game currently has loaded. Can create, delete, and switch between mods. Only one may be loaded at a time. If you want to work on a mod, make sure the game is set to that mod before doing work.

[![](/wiki/images/9/95/DevPanel_Mod.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Mod.png)

### Constants

Starter data, special game events, and VFX that are used in hardcoded portions of the game.

[![](/wiki/images/4/46/DevPanel_Constants.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Constants.png)

### The Debug Room

This room contains a crowd of Pokemon at the top left corner for east move/ability/item testing.

[![](/wiki/images/f/fa/DebugRoom.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DebugRoom.png)
