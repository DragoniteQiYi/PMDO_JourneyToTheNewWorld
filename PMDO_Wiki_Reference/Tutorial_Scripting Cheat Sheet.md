# Tutorial:Scripting Cheat Sheet

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Scripting_Cheat_Sheet

A simple list of commands to make common cutscene actions, intended for those with little programming experience. Mostly example snippets that can be copied and pasted or simple instructions.

For a more in-depth reference, check the [Script Reference](Lua%20Function%20Reference.md "Script Reference")

For programmers, in-depth documentation of the base engine can be found on [Github](https://github.com/RogueCollab/RogueEssence/tree/master/RogueEssence/Lua).

For those that want to learn Lua and better understand the way it all works, it is recommended to start with a [Tutorial](https://www.tutorialspoint.com/lua/index.htm).

## How do I…

### Display text?

Use WaitShowDialogue.

```
UI:ResetSpeaker()
UI:WaitShowDialogue("Hello World!")
```

It is good practice to use ResetSpeaker before calling the first WaitShowDialogue in a function. It ensures that no variables have been set by previous functions.

### Display text instantly?

Set Auto-finish.

```
UI:SetAutoFinish(true)
UI:WaitShowDialogue("Hello World!")
```

### Display text with an NPC's profile?

```
local npc = CH('Friend') --obtain the NPC
UI:SetSpeaker(npc) --set it to the dialogue box
UI:WaitShowDialogue("Hello World!")
```

### Obtain the player?

```
local player = CH('PLAYER')
```

The player character has the special entity name PLAYER.

### Make the text pause in the middle of a dialogue?

Edit the string to include the pause tag. Ex.

```
Ready,[pause=30] set,[pause=0] GO!
```

A pause of 60 will pause text for 60 frames (one second) before it continues.
A pause of 0 will pause text and prompt the player to press Confirm before it continues.

### Color text differently?

Edit the string to include the color tag. Ex.

```
Welcome to [color=#FFC663]Treasure Town[color]!
```

The tag accepts colors in hex. Don’t forget to close the tag!
Additionally, you can access colored names for Pokemon, item, move, zone, etc. using GetColoredName(), GetIconName(), or GetDisplayName()

```
local item = RogueEssence.Dungeon.InvItem("food_apple")
UI:WaitShowDialogue(item:GetDisplayName())
```

### Other Tags?

[Text Guide](Tutorial_Text%20Guide.md "Text Guide")

### Ask the player a question?

Yes/No:

```
UI:ChoiceMenuYesNo(STRINGS:Format(MapStrings['String_001']), false)
UI:WaitForChoice()
ch = UI:ChoiceResult()
if ch then
    UI:WaitShowDialogue(STRINGS:Format(MapStrings['String_002']))
else
    UI:WaitShowDialogue(STRINGS:Format(MapStrings['String_003']))
end
```

Custom:

```
choices = {STRINGS:Format(MapStrings['Strings_001']),
    STRINGS:Format(MapStrings['Strings_002']),
    STRINGS:Format(MapStrings['Strings_003'])}

UI:BeginChoiceMenu(STRINGS:Format(MapStrings['Strings_004']), choices, 1, 3)
UI:WaitForChoice()
result = UI:ChoiceResult()
if result == 1 then
    UI:WaitShowDialogue(STRINGS:Format(MapStrings['Strings_004']))
elseif result == 2 then
    UI:WaitShowDialogue(STRINGS:Format(MapStrings['Strings_005']))
else
    UI:WaitShowDialogue(STRINGS:Format(MapStrings['Strings_006']))
end
```

### Change a character’s portrait emotion for speaking?

```
UI:SetSpeakerEmotion("Happy")
```

The list of possible portrait emotions can be found in `Base/GFXParams.xml`. Look inside the Emotions tag.

### Make a character do a sprite emote?

```
GROUND:CharSetEmote(player, "exclaim", 1)
```

Argument 2 is the asset name of the emote, found by editing emotes.
Argument 3 is the number of repetitions to animate the emote with.

### Make a character turn?

```
GROUND:EntTurn(player, Direction.UpLeft) --turn a specific direction
GROUND:CharTurnToChar(friend, player) --turn to a specific character
GROUND:CharAnimateTurn(player, Direction.DownRight, 4, true) --turn with animation
GROUND:CharTurnToCharAnimated(friend, player, 4) --turn to char with animation
```

### Walk somewhere?

```
GROUND:MoveInDirection(player, Direction.Down, 24, false, 2)
GROUND:MoveInDirection(player, Direction.DownLeft, 24, true, 4) --running
GROUND:MoveToPosition(player, 120, 120, false, 2)
GROUND:MoveToPosition(player, 120, 120, true, 4) --running
```

### Warp the player?

```
GROUND:TeleportTo(player, 120, 120, Direction.Up)
```

### Make a character move with custom animation?

```
GROUND:AnimateInDirection(player, "Hurt", Direction.Right, Direction.Left, 24, 3, 2)
```

This will make a character appear to be dragged leftward while facing right in a Hurt animation.
The “3” signifies how long each frame of animation should take in 1/60ths of a second.
The “2” signifies the speed of movement. 2 is normal walking speed.

### Make two or more characters move at once?

You can achieve this by calling BranchCoroutine and giving it a function that does the secondary actions:

```
local coro1 = TASK:BranchCoroutine(function() test_grounds.Walk_Sequence(partner1) end)
local coro2 = TASK:BranchCoroutine(function() test_grounds.Walk_Sequence(partner2) end)
GROUND:MoveInDirection(player, Direction.Up, 72, false, 2)
GROUND:CharAnimateTurn(player, Direction.DownLeft, 4, false)

TASK:JoinCoroutines({coro1,coro2})
```

You would then define the function elsewhere:

```
function test_grounds.Walk_Sequence(character)
  GROUND:MoveInDirection(character, Direction.Up, 72, false, 2)
  GROUND:CharAnimateTurn(character, Direction.DownRight, 4, false)
end
```

### Make a character perform an animation?

```
GROUND:CharSetAnim(chara, "Attack", false) --animates once
GROUND:CharSetAnim(chara, "Idle", true) --animation loops forever
GROUND:CharEndAnim(chara) --stops a looping animation
GROUND:CharWaitAnim(chara, "Attack") --animates and waits until done
```

The list of possible animations can be found in `Base/GFXParams.xml`. Look inside the Actions tag.

This will play an animation that stops at the frame where the attack comes out. Useful for bosses making their attack pose before a fight whoosh.

### Play VFX?

```
local emitter = RogueEssence.Content.SingleEmitter(RogueEssence.Content.AnimData("Flamethrower", 3))
emitter.LocHeight = 8
GROUND:PlayVFX(emitter, player.Bounds.Center.X, player.Bounds.Center.Y)
```

This plays a single attack animation for the Flamethrower hit effect, on top of the player (must be declared earlier).

### Make everyone stop moving in cutscenes?

```
GAME:CutsceneMode(true)
```

This turns cutscene mode on, which prevents idle movement and removes UI in dungeons.

### Activate/Deactivate a character/object?

```
GROUND:Hide("Shopkeeper")
GROUND:Unhide("Shopkeeper")
```

Pass in the entity name you want to hide or show.

### Make a sound? A Fanfare? Change the BGM?

```
SOUND:PlaySE("Battle/DUN_Explosion")
SOUND:PlayBattleSE("DUN_Explosion")
SOUND:LoopSE("Battle/EVT_Applause")
SOUND:LoopBattleSE("EVT_Applause")
SOUND:StopSE("Battle/EVT_Applause")
SOUND:StopBattleSE("EVT_Applause")
SOUND:PlayFanfare("Fanfare/Treasure")
SOUND:PlayBGM("Title.ogg", true)
```

The list of possible sounds can be found in Content/Sound. The list of music can be found in Content/Music. Music must use `LOOPSTART`/`LOOPLENGTH` tags to loop properly.

### Make a looping sound?

```
SOUND:LoopSE("Battle/EVT_Applause")
SOUND:LoopBattleSE("EVT_Applause")
SOUND:StopSE("Battle/EVT_Applause")
SOUND:StopBattleSE("EVT_Applause")
```

The sound effect must use `LOOPSTART`/`LOOPLENGTH` tags to loop properly.

### Change the name of the character?

*This section is a **stub**. You can help PMDO Wiki by expanding it.*

```
GAME:SetCharacterNickname(partner, result)
```

### Change the starters?

Edit the Start Params by navigating to the [Constants Tab](https://wiki.pmdo.pmdcollab.org/wiki/Dev_Mode%23Constants "Dev Mode").

You can also alter form, skin (shinyness), gender and a preset name. If there is only one choice, with a preset name, the starting menu will be skipped entirely. This is the preferred way to start Explorers of Sky-type Special Episodes.

### Make a character say something different when talked to again?

You will need to edit `Data/Script/scriptvars.lua`. Add an additional table with a single variable like below:

```
SV.your_map_name =
{
  TalkedToNpc  = false
}
```

If there already exists a table with your map name on it, just add the variable to it.
Then, add a check to your NPC’s action event:

```
function your_map_name.YourNpc_Action(chara, activator)
    if SV.your_map_name then
        UI:WaitShowDialogue(STRINGS:Format(MapStrings['String_002']))
    else
        UI:WaitShowDialogue(STRINGS:Format(MapStrings['String_001']))
        SV.your_map_name = true
    end
end
```

### Display a Title?

```
UI:WaitShowTitle(GAME:GetCurrentGround().Name:ToLocal(), 20)
GAME:WaitFrames(30)
UI:WaitHideTitle(20)
```

This snippet fades in the title of the current ground map in 20 frames.
Waits for 30 frames.
Then fades out the title in 20 frames.

### Show a Pre-Drawn Picture?

```
UI:WaitShowBG("Sky", 1, 20);
UI:WaitInput(false);
UI:WaitHideBG(20);
```

This snippet fades in the Sky background in 20 frames, waits for input, and fades it out on input.

### Move the camera?

To center on an absolute position, X40 Y40:

```
GAME:MoveCamera(40, 40, 1, false)
```

To center on a position relative to the player, 80 pixels above player:

```
GAME:MoveCamera(0, -80, 1, true)
```

Move slowly over the course of 60 frames:

```
GAME:MoveCamera(40, 40, 60, false)
```

### Set the map weather?

```
GROUND:AddMapStatus("clouds_overhead")
```

This call will add status with the asset name "clouds\_overhead", which has the clouds passing overhead. To make the map start with this status, place it in the Init function of the map.

### Send the player to a dungeon?

```
GAME:EnterDungeon('[DUNGEON NAME]', 0, 0, 0, RogueEssence.Data.GameProgress.DungeonStakes.Risk, true, true)
```

This sends the player to a dungeon AND begins an adventure. Adventures are recorded, with all dungeon footage combined into one replay.

```
GAME:EnterZone('[DUNGEON NAME]', 0, 0, 0)
```

This sends the player to a dungeon but does NOT begin an adventure. Whatever occurs in the destination zone is not recorded.

```
GAME:ContinueDungeon('[DUNGEON NAME]', 0, 0, 0)
```

This sends the player to a dungeon AND continues the currently running adventure.

### Send the player to a ground map?

*This section is a **stub**. You can help PMDO Wiki by expanding it.*

```
GAME:EnterGroundMap("[GROUND MAP NAME]", "[ENTRANCE NAME]")
```
