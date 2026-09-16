# Tutorial:Sprite Tool

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Sprite_Tool

This page contains information about a deprecated tool. It is recommended to use a recent installation of PMDO instead. A guide on how to use PMDO to assist in spriting can be found [here](https://docs.google.com/presentation/d/1cuDMUz4fI1pAoS7Pp_VzlKmbx0u0C34SfJ3F6Gczt6Q/edit#slide=id.gc6f980f91_0_0).

This is a reference for the Sprite Tool used in SkyTemple. It differs from PMDO in that it does not contain all elements and editors suited for gameplay- only for sprite testing. However, the sprite testing tools are all very similar if not identical to PMDO.

Downloads:

- [Win-x86](https://www.mediafire.com/file/2lq5yg1yjkeo12g/PMDC-win-x86.zip/file)
- [Win-x64](https://www.mediafire.com/file/svgb36qyuke1d9y/PMDC-win-x64.zip/file)
- [OSX](https://www.mediafire.com/file/x26b8dze09iubfw/PMDC-osx.zip/file)
- [Linux](https://www.mediafire.com/file/p6yajnip3lahe8v/PMDC-linux.zip/file)

The sprite tool is deployed on a separate branch on the [main repo](https://github.com/audinowho/PMDODump/tree/Sprite).

## Common Controls

Most controls are explained in the app itself. The most common actions are listed below as a cheat sheet:

- F1 shows diagnostic information. This will show FPS, version number, current position, animation, and hitboxes. This is also usable outside of dev mode but will only show FPS and version number.
- Shift+Right Click will warp the player to the location clicked.
- Backspace toggles the minimap.
- F2 pauses the game.
- F3 advances the frame when the game is paused.
- F4 changes the player’s emotion (seen only with F1 diagnostic information).
- F5 slows down the game.
- F6 speeds up the game
- F8 mutes the music, and unmutes it when muted.
- F9 turns on SeeAll mode, where the entire map is revealed.
- F12 warps the player to the ground map.
- F1+F12 warps the player to the dungeon.
- Scroll Mouse Wheel to zoom.

## Debug UI

[![](/wiki/images/3/35/SpriteTool_DebugUI.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_DebugUI.png)

1. FPS stats. Refreshes every time the overlay is toggled. Press F1 to toggle.
2. Version Number. You can ignore this.
3. Animation Speed. F5 to slow down, F6 to speed up. F2 to pause. F3 to frame advance.
4. Zoom level. Use the mouse scroll wheel to adjust.
5. Mouse XY Position in Pixels
6. Mouse XY Position in Tiles
7. Current location in Zone, Section, and Map. You can ignore this.
8. Character XY Position in tiles.
9. Current animation in Anim:Direction:Frame, helps you determine which frame of animation you are on. Colored Yellow if the animation is a copy of another animation. Colored gray if the animation does not exist.
10. Time in frames elapsed for the current animation.
11. Turn Counter. You can ignore this.
12. Total turns. You can ignore this.
13. Current Emotion. F4 to change.

The plus signs all signify offsets for the Pokemon:

- Green: Head
- Black: Center of Body
- Blue: Left Arm
- Red: Right Arm

## Sprite Import/Export

By clicking on the editor buttons in the dev panel, you can edit sprites and portraits. The testing app itself has the first 151 Pokemon filled in by default.

[![](/wiki/images/e/ea/SpriteTool_SpriteImport.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_SpriteImport.png)

- To import to a slot, select that slot and choose Import. You will be asked to choose a folder to import from.
- If you make some changes and want to see them reflected immediately, click on the Re-Import button to import without having to choose the folder again.
- Exporting saves the sprite in single-sheet format by default. This format is useful for editing and recoloring the spritesheet by frames.

Right-clicking the sprite will also give some convenience functions:

[![](/wiki/images/9/97/SpriteTool_ContextMenu.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_ContextMenu.png)

- Export as Multi-Sheet: Single sheet format stores all animation data in XML, and the animation frames themselves as a single sheet. This format is useful for editing specific animations.
- Collapse Offsets: Takes all animation frames that look the same and makes it such that they all have the same offset positions. Useful if you have many inconsistent offsets.
- Generate Simple Anim: Auto-generates a selected animation out of a limited list. Useful so you don’t have to create certain anims manually.
- Mirror: Copies an animation from the left to the right, or vice versa. Good for making sure animation positions are consistent.

## Examples

### Similar-Looking Pokemon

When spriting a new Pokemon, it often helps to start with an existing model and edit it. That way, the work of rigging and timing the sprite animations is mostly saved. This is especially true for Megas and Regional Variants. The walkthrough below shows how best to do this, using Alolan Vulpix as an example.

Begin by downloading the spritesheet for regular Vulpix. You can get a zip by going to the #spritebot channel in the SkyTemple discord and sending the command

```
!sprite vulpix
```

[![](/wiki/images/f/f8/SpriteTool_MultiSheet.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_MultiSheet.png)

This folder is currently in multi-sheet format. It has every animation in a separate sheet, and repeats sprites many times for the sake of clarity. We need to convert it to single-sheet.

Import the sprite, then export it to a new folder using the bottom buttons. The sprite tool exports in Single Mode by default.

[![](/wiki/images/2/20/SpriteTool_Import.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_Import.png)

The folder should now look like this.

[![](/wiki/images/7/7c/SpriteTool_SingleSheet.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_SingleSheet.png)

In this mode, everything is squashed down to one sheet, and there are no duplicate sprites. Thus, the list of sprites in Anim.png are the only sprites you need to worry about. Replace them all with Alolan Vulpix’s sprites. You can make your own, but for this example, use the set from [NeroIntruder](https://imgur.com/xsAOJEE).

[![](/wiki/images/f/f2/SpriteTool_BeforeRecolor.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_BeforeRecolor.png)[![](/wiki/images/2/29/SpriteTool_AfterRecolor.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_AfterRecolor.png)

At first glance these may seem like recolors, but layer them on top of each other and you will find that the hair fluff has changed, and one specific pose has been slightly altered. Second from the right, second from the top:

[![](/wiki/images/a/a1/SpriteTool_BeforeRecolorSingle.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_BeforeRecolorSingle.png)[![](/wiki/images/6/6f/SpriteTool_AfterRecolorSingle.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_AfterRecolorSingle.png)

The left paw is lowered somewhat. This will affect where the offset for the sprite needs to be.
Open up both the original sheet and the edited sheet, and then layer Offsets.png on top of both.

[![](/wiki/images/f/f2/SpriteTool_BeforeRecolor.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_BeforeRecolor.png)[![](/wiki/images/2/29/SpriteTool_AfterRecolor.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_AfterRecolor.png)

As mentioned in the Debug UI section, Black is the head, Green is the center of the body, and Blue and Red are the left and right arms. (Further reading in [PMD Sprite Format](Tutorial_PMD%20Sprite%20Format.md "PMD Sprite Format")) You should see the offset pixels line up to these sprites like such:

[![](/wiki/images/a/a6/SpriteTool_BeforeRecolorOffsets.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_BeforeRecolorOffsets.png)[![](/wiki/images/b/b0/SpriteTool_AfterRecolorOffsets.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_AfterRecolorOffsets.png)

With the sprite’s slight movement, you can see that the offset points have been slightly altered. The blue pixel, which was on the tip of the left paw, is now inaccurate. The other pixels are shifted off slightly as well. You must shift the pixels accordingly to fit the new sprite:

[![](/wiki/images/6/6f/SpriteTool_AfterRecolorOffsetsFixed.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_AfterRecolorOffsetsFixed.png)

Save both the Anim.png and the Offsets.png. Re-import them to the sprite tester.

[![](/wiki/images/2/20/SpriteTool_RecolorExample.gif)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_RecolorExample.gif)

You can see that the new vulpix retains all the animations, only the sprites (and the offset of one of them) have changed.

Export in multi-sheet mode.

[![](/wiki/images/a/a6/SpriteTool_ExportMultiSheet.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_ExportMultiSheet.png)

The resulting folder can now be imported using SkyTemple, or submitted to SpriteBot.

[![](/wiki/images/5/55/SpriteTool_MultiSheetRecolored.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_MultiSheetRecolored.png)

### A New Animation

A common scenario is taking an existing Pokemon and adding new animations for it. Starter-only animations such as Wake are especially popular for hacks that want to star unconventional Pokemon as main characters. The walkthrough below shows how best to do this, using Poochyena as an example.

Begin by downloading the spritesheet for Poochyena. You can get a zip by going to the #spritebot channel in the SkyTemple discord and sending the command:

```
!sprite poochyena
```

[![](/wiki/images/3/3a/SpriteTool_FromMultiSheet.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_FromMultiSheet.png)

This folder is currently in multi-sheet format. It has every animation in a separate sheet, which means that edits to one sheet will not affect another. Let’s take a look at the Idle animation as an example.

Every animation is split up into 3 sheet components:

[![](/wiki/images/4/44/SpriteTool_Anim.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_Anim.png)[![](/wiki/images/2/2a/SpriteTool_Shadow.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_Shadow.png)[![](/wiki/images/2/21/SpriteTool_Offset.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_Offset.png)
Anim Shadow Offsets

- Anim contains the actual sprite. What you see is what you get in the final animation. All sprites are aligned to the middle of each frame.
- Shadow tells the game where to place the shadow in each frame of animation. The strange-looking icon consists of 4 components:
  - Blue: A large shadow.
  - Red: A medium shadow.
  - Green: A small shadow.
  - White: The official position of the shadow.
- Offsets contains individual colored pixels specifying where the head, arms, and body are on the sprite. One set of 4 per sprite:
  - Black: Head
  - Green: Center of body
  - Blue: Left Arm
  - Red Right Arm

If you layer them on top of each other, you can easily see their functions:

[![](/wiki/images/6/6a/SpriteTool_Combined.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_Combined.png)

Open AnimData.xml. You will find a section dedicated to the Idle action that provides more data about the animation:

[![](/wiki/images/b/b6/SpriteTool_AnimDataXml.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_AnimDataXml.png)

- Name: The name of the animation, used to identify it in Spritebot
- Index: The index of the animation, used to identify it internally in PMD Roms. The Idle animation here is always 7.
- FrameWidth: The width of each frame in the animation. With a frame width of 24 and the Idle-Anim sheet having 6 frames per direction, the sheet has a total width of 144 pixels.
- FrameHeight: The height of each frame in the animation. With a frame height of 40 and the Idle-Anim sheet having 8 directions, the sheet has a total height of 320 pixels.
- Durations: How long each frame of the animation lasts. The number of durations must equal the number of frames. In this case, 6 frames = 6 durations.

There are more parts. Further reading in [PMD Sprite Format](Tutorial_PMD%20Sprite%20Format.md "PMD Sprite Format").

All animations must have their own section in AnimData.xml. Let’s add a new animation: EventSleep

Most event animations used by starters share a consistent template with minor deviations. Thus it is often ideal to copy the animation from another sprite as a starting point.

Let’s take the EventSleep animation from Vulpix. You can download it from the spritebot just like Poochyena. Locate the EventSleep entry in AnimData.xml, and the relevant files:

[![](/wiki/images/b/bf/SpriteTool_SleepAnimDataXml.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_SleepAnimDataXml.png)
[![](/wiki/images/5/51/SpriteTool_SleepAnim.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_SleepAnim.png)[![](/wiki/images/3/38/SpriteTool_SleepShadow.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_SleepShadow.png)[![](/wiki/images/9/9c/SpriteTool_SleepOffset.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_SleepOffset.png)

Copy EventSleep-Anim.png, EventSleep-Shadow.png, and EventSleep-Offsets.png over to the current folder. Also copy and paste the EventSleep entry from Vulpix’s AnimData.xml to Poochyena’s. You can put it anywhere between two other <Anim> tags.

At this point, most of the info has already been added. You will just need to replace the vulpix sprites with custom poochyena sleeping sprites. You can use [these](https://imgur.com/A1h8rg3) by Smalusion.

[![](/wiki/images/2/2d/SpriteTool_SleepResult.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_SleepResult.png)[![](/wiki/images/9/9c/SpriteTool_SleepOffset.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_SleepOffset.png)

Remember to update the offsets such that they align with the right bodyparts.

Import the spritesheet. Test it by switching to the sprite, and setting your anim to EventSleep:

[![](/wiki/images/8/83/SpriteTool_NewAnimExample.gif)](https://wiki.pmdo.pmdcollab.org/wiki/File:SpriteTool_NewAnimExample.gif)

After confirming everything looks okay, you can submit the new sheet to spritebot.

## Troubleshooting

### Offset Collapse

UNDER CONSTRUCTION

Sometimes, you may find the spritebot warn you about inconsistent offsets. It will have likely returned a message like so:

This is a problem you must address.

You can look at the specific animations it calls out and fix them manually.

However, an easier way to resolve this is to collapse offsets, and fix individual sprites in single-sheet mode.

## Links

[emmuffin's Spriting Guide](https://docs.google.com/presentation/d/1cuDMUz4fI1pAoS7Pp_VzlKmbx0u0C34SfJ3F6Gczt6Q)
