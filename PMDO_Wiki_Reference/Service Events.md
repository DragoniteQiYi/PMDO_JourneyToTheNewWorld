# Service Events

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Service_Events

This page shows all Service Events available in the game and their arguments. If you were looking for the tutorial page, you can find it [here](https://wiki.pmdo.pmdcollab.org/wiki/Services "Services").

## EngineServiceEvents.Init

Triggered as soon as the game is done loading.
The base game implements this in the `debug_tools` service.

### Arguments

None.

## EngineServiceEvents.Deinit

Triggered whenever the game closed, right after it is done unloading non-graphics related data.
The base game implements this in the `debug_tools` service.

### Arguments

None.

## EngineServiceEvents.GraphicsLoad

Triggered at the very start of the game's process, right after it is done loading graphics data.

### Arguments

None.

## EngineServiceEvents.GraphicsUnload

Triggered at the very end of the game's process, right before it shuts down.

### Arguments

None.

## EngineServiceEvents.MenuButtonPressed

Triggered whenever the menu button is pressed during gameplay and no menus are open.
The base game implements this in the `menu_tools` service.

### Arguments

None.

## EngineServiceEvents.NewGame

Triggered whenever a new save data is created. If the mod has a list of starters set up in its Start Parameters, this event will wait for a starter to be selected. It can also be used to set up a default save file for debug maps.
The base game implements this in the `debug_tools` service.

### Arguments

None.

## EngineServiceEvents.LossPenalty

Triggered whenever a dungeon is failed and its Stakes level is set to Risk.
The base game implements this in the `debug_tools` service.

### Arguments

- **RogueEssence.Data.GameProgress**: the save data.

## EngineServiceEvents.UpgradeSave

Triggered when a save is loaded on a newer version of the game or when a mod has been added, removed or updated since the last time it has been opened.
The base game implements this in the `upgrade_tools` service.
Contrary to LoadSavedData, this event only triggers when actually leaving the Top Menu.

### Arguments

None.

## EngineServiceEvents.Restart

Currently unimplemented.

## EngineServiceEvents.Update

Triggerered every frame.

### Arguments

- **Microsoft.Xna.Framework.GameTime**: the time passed since the game was opened.

## EngineServiceEvents.SaveData

Triggered whenever the game is saved.

### Arguments

None.

## EngineServiceEvents.LoadSavedData

Triggered whenever the save file is read. This also happens when opening the Top Menu, since that is a necessary step to display it correctly, but only if a save file already exists.
The base game implements this in the `debug_tools` service.

### Arguments

None.

## EngineServiceEvents.AddMenu

Triggered every time a menu is displayed.
The base game implements this in the `menu_tools` service.

### Arguments

- **RogueEssence.Menu.IInteractable**: the menu that is being opened. For more information, see: [Editing Menus](https://wiki.pmdo.pmdcollab.org/wiki/Editing_Menus "Editing Menus").

## EngineServiceEvents.MusicChange

Triggered every time the music changes.

### Arguments

- **System.String**: the song's name.
- **System.String**: the song's original title.
- **System.String**: the song's album.
- **System.String**: the song's artist.
- **System.String**: the song's spoiler tag.

## EngineServiceEvents.GroundEntityInteract

Currently unimplemented.

## EngineServiceEvents.DungeonModeBegin

Triggered whenever the game switches to Dungeon Mode.

### Arguments

None.

## EngineServiceEvents.DungeonModeEnd

Triggered whenever the game switches away from Dungeon Mode.

### Arguments

None.

## EngineServiceEvents.DungeonMapInit

Triggered whenever a new dungeon map or floor is entered, after the Init script has ended.

### Arguments

- **System.String**: the internal name of the entered map or floor.
- **RogueEssence.Ground.GroundMap**: the entered map or floor.

## EngineServiceEvents.DungeonFloorEnter

Triggered whenever a new dungeon map or floor is entered, after the Enter script has ended.

### Arguments

- **System.String**: the internal name of the entered map or floor.
- **RogueEssence.Ground.GroundMap**: the entered map or floor.

## EngineServiceEvents.DungeonFloorExit

Triggered whenever a dungeon map or floor is exited, after the Exit script has ended.

### Arguments

- **System.String**: the internal name of the exited map or floor.
- **RogueEssence.Ground.GroundMap**: the exited map or floor.

## EngineServiceEvents.ZoneInit

Triggered whenever a new zone is entered, after the Init script has ended.

### Arguments

None.

## EngineServiceEvents.DungeonSegmentStart

Triggered whenever a new dungeon segment is entered.

### Arguments

None.

## EngineServiceEvents.DungeonSegmentEnd

Triggered when leaving a dungeon segment by either reaching its final floor, being defeated or escaping. It does not run when switching segments through hidden stairs or similar methods.

### Arguments

None.

## EngineServiceEvents.GroundModeBegin

Triggered whenever the game switches to Ground Mode.

### Arguments

None.

## EngineServiceEvents.GroundModeEnd

Triggered whenever the game switches away from Ground Mode.

### Arguments

None.

## EngineServiceEvents.GroundMapInit

Triggered whenever a new ground map is entered, after the Init script has ended.

### Arguments

- **System.String**: the internal name of the entered map.
- **RogueEssence.Ground.GroundMap**: the entered map.

## EngineServiceEvents.GroundMapEnter

Triggered whenever a new ground map is entered, after the Enter script has ended.

### Arguments

- **System.String**: the internal name of the entered map.
- **RogueEssence.Ground.GroundMap**: the entered map.

## EngineServiceEvents.GroundMapExit

Triggered whenever a ground map is exited, after the Exit script has ended.

### Arguments

- **System.String**: the internal name of the exited map.
- **RogueEssence.Ground.GroundMap**: the exited map.
