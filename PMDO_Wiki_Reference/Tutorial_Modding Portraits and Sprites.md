# Tutorial:Modding Portraits and Sprites

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Modding_Portraits_and_Sprites

This tutorial shows how to import and test custom Pokemon sprites and portraits, with a focus on those taken from the [PMD Sprite Repository](https://sprites.pmdcollab.org/).

## Setup

Run the game in developer mode using the `dev.bat`

[![](/wiki/images/6/6f/DevMode_DevBat.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevMode_DevBat.png)

The game will start with a window for dev controls:

[![](/wiki/images/5/57/ModdingSprites_Startup.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_Startup.png)

In the game window, hold F1 and press F12 to skip to the debug room:

[![](/wiki/images/4/48/ModdingSprites_DebugView.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_DebugView.png)

1. FPS stats. Refreshes every time the overlay is toggled. Press F1 to toggle.
2. Animation Speed. F5 to slow down, F6 to speed up. F2 to pause. F3 to frame advance.
3. Zoom level. Use the mouse scroll wheel to adjust.
4. Current location in Zone, Section, and Map. You can ignore this.
5. XY Position in tiles.
6. Current animation in Anim:Direction:Frame, helps you determine which frame of animation you are on.
7. Time in frames elapsed.

## Testing

You can change which Pokemon you are debugging by using the Player tab in the dev window.
You can also change the animation you’re currently using:

[![](/wiki/images/4/45/ModdingSprites_DebuggingAnims.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_DebuggingAnims.png)

[![](/wiki/images/e/ea/ModdingSprites_Offsets.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_Offsets.png)

The plus signs all signify offsets for the Pokemon:

- Green: Head
- Black: Center of Body
- Blue: Left Arm
- Red: Right Arm

You can warp to anywhere on the floor by using Shift+Right Click, and you can turn off the minimap using Backspace

## Editing Sprites

To edit sprites, go to the Sprites tab:

[![](/wiki/images/d/d1/DevPanel_Sprites.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Sprites.png)

Here, you can import and export sprites:

[![](/wiki/images/6/64/ModdingSprites_SpriteList.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_SpriteList.png)

To import to a slot, select that slot and choose Import.

[![](/wiki/images/b/b9/ModdingSprites_SpriteImport.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_SpriteImport.png)

You will need to specify a **folder** to import from.

[![](/wiki/images/e/ef/ModdingSprites_SpriteImportFolder.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_SpriteImportFolder.png)

PMDO supports the folder format used in the PMD Sprite Repository:

[![](/wiki/images/0/0e/ModdingSprites_SpriteMultiSheet.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_SpriteMultiSheet.png)

If you choose the folder containing the XML and sprites directly, the import will succeed.

Import will take some time, wait for it to finish.
Once import is done, switch to the Pokemon:

[![](/wiki/images/3/36/ModdingSprites_ImportComplete.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_ImportComplete.png)

If you make some changes and want to see them reflected immediately, click on the Re-Import button to import without having to choose folder again.

Right-clicking on a sprite will also give the option to use certain convenience functions:

[![](/wiki/images/e/e2/ModdingSprites_ContextMenu.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_ContextMenu.png)

- Export as Single Sheet: Single sheet format stores all animation data in XML, and the animation frames themselves as a single sheet. It is useful for editing or recoloring only frames. Read more below.
- Create Double Anim: Auto-generates the Double animation for the pokemon, using the first Idle frame. Useful tool so you don’t have to create the anim manually.
- Create Rotate Anim: Auto-generates the Rotate animation for the pokemon, using the first Idle frame. Useful tool so you don’t have to create the anim manually.
- Create Swing Anim: Auto-generates the Swing animation for the pokemon, using the first Idle frame. Useful tool so you don’t have to create the anim manually.
- Collapse Offsets: Takes all animation frames that look the same and makes it such that they all have the same offset positions. Useful if you have many inconsistent offsets.

If you export a sprite in single-sheet format, it will look like this:

[![](/wiki/images/e/e3/ModdingSprites_SpriteSingleSheet.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_SpriteSingleSheet.png)

In this format, it becomes easier to recolor all sprites because they are in a single sheet file.
It also becomes easy to edit frames; if you wanted to edit a frame in the normal PMD Sprite Zip format, you would need to hunt down every animation that used that frame. This format is useful for changing the sprite without changing its movement.

When you're finished editing the sprite in this format, you can import it using the Import button, and then export it back to PMD Sprite Zip format.

## Editing Portraits

Portraits are handled the same way as sprites, in the same structure.

[![](/wiki/images/8/82/ModdingSprites_PortraitList.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_PortraitList.png)

You can choose to import them in the same way.

Multi-file format from the PMD Sprite Repository is supported:

[![](/wiki/images/3/3e/ModdingSprites_PortraitMultiSheet.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_PortraitMultiSheet.png)

As is the single-file version:

[![](/wiki/images/1/1a/ModdingSprites_PortraitSingleSheet.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingSprites_PortraitSingleSheet.png)

Make sure the spritesheet is named `Sheet.png` when you import the folder.
You will be able to see your portrait in the bottom-left of the screen. Press F4 to cycle through emotions.
