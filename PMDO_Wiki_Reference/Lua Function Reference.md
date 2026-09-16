# Lua Function Reference

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Lua_Function_Reference

This is a reference page of all the functions that can be called in Lua and their namespaces. See the main page for each namespace for further details.

## AI

Main article: [AI (functions)](https://wiki.pmdo.pmdcollab.org/wiki/AI_%28functions%29 "AI (functions)")

| Name | Description |
| --- | --- |
| SetCharacterAI | Assign the given scripted AI class to the specified GroundChar. |
| DisableCharacterAI | Disable a given groundchar's AI processing until its enabled again. |
| EnableCharacterAI | Enable a given groundchar's AI processing if its currently disabled. |
| SetAIState | Force the AI to change to the specified state if it exists |
| SetupLuaFunctions | Initializes any LuaFunctions found in the class. Automatically on lua initialization. |

## Dungeon

Main article: [Dungeon (functions)](https://wiki.pmdo.pmdcollab.org/wiki/Dungeon_%28functions%29 "Dungeon (functions)")

| Name | Description |
| --- | --- |
| CharTurnToChar | Makes a character turn to face another |
| LastDungeonResult | Gets the result of the last dungeon adventure. |
| DungeonCurrentFloor | Returns the floor number of the current dungeon. |
| DungeonAssetName | Returns the internal name for the current dungeon. |
| DungeonDisplayName | Returns the localized name of the current dungeon. |
| SetMinimapVisible | Used to force-disable the minimap. |
| CharSetEmote | Set a character's emote in a dungeon map. |
| CharStartAnim | Set a character's animation. |
| CharEndAnim | Stops a character's current animation, reverting them to default idle. |
| CharWaitAnim | Set a character's animation, and waits until it completed before continue. |
| CharSetAction | Sets a character's character-animation, taking a CharAnimation object instead of an animation name. |
| PlayVFX | Plays a VFX in the dungeon map |
| PlayVFX | Plays a VFX that has a start position and an end position. It uses a finite emitter that generates BaseAnims. |
| PlayVFXAnim | Plays a VFX using just a BaseAnim |
| MoveScreen | Plays a screen-moving effect. |
| AddMapStatus | Adds a Map Status to the current map. |
| RemoveMapStatus | Removes a Map Status from the current map. |
| SetupLuaFunctions | Initializes any LuaFunctions found in the class. Automatically on lua initialization. |

## Game

Main article: [Game (functions)](https://wiki.pmdo.pmdcollab.org/wiki/Game_%28functions%29 "Game (functions)")

### Zone

Main article: [Game (functions)/Zone](https://wiki.pmdo.pmdcollab.org/wiki/Game_%28functions%29/Zone "Game (functions)/Zone")

| Name | Description |
| --- | --- |
| GetCurrentGround | Gets the current ground map. |
| GetCurrentFloor | Gets the current dungeon map. |
| GetCurrentDungeon | Gets the current zone, also known as dungeon. |
| UnlockDungeon | Unlocks a specified dungeon. |
| DungeonUnlocked | Checks if a dungeon is unlocked. |
| RestartToTitle | Leave current map and load up the title screen. |
| RestartRogue | Restarts a Roguelocke run based on the configuration |
| CutsceneMode | Sets the game in cutscene mode. This prevents characters from taking idle action and hides certain UI. |

### Adventure

Main article: [Game (functions)/Adventure](https://wiki.pmdo.pmdcollab.org/wiki/Game_%28functions%29/Adventure "Game (functions)/Adventure")

| Name | Description |
| --- | --- |
| EnterGroundMap | Leave current map, and enter specified ground map within the current zone |
| EnterGroundMap | Leave current map, and enter specified ground map within the current zone |
| EnterGroundMap | Leave current map, and enter specified ground map within a new zone. |
| EnterDungeon | Enters a zone and begins a new adventure. |
| ContinueDungeon | Enters a zone and continues the current adventure. Often used in midpoint rest areas. |
| EndDungeonRun | Ends the current adventure, sending the player to a specified destination. |
| EnterZone | Enters a zone and begins a new adventure. |
| InRogueMode | Checks if the current game is in rogue mode. |
| GetDailySeed | Gets the random seed for the current adventure. |

### Multiplayer

Main article: [Game (functions)/Multiplayer](https://wiki.pmdo.pmdcollab.org/wiki/Game_%28functions%29/Multiplayer "Game (functions)/Multiplayer")

| Name | Description |
| --- | --- |
| EnterRescue | Enters a zone and begins a rescue adventure. |
| AddAOKRemark | TODO: WIP |
| HasSOSMail | TODO |
| HasAOKMail | TODO |
| HasServerSet | Returns true if there is at least one server in the server list. |
| GetRescueAllowed | Checks to see if rescue is allowed. |
| SetRescueAllowed | Sets the value in the player's save file to determine if they can be rescued or not. If rescue is possible on the Save File level, it can still be prevented by the map. |

### Camera

Main article: [Game (functions)/Camera](https://wiki.pmdo.pmdcollab.org/wiki/Game_%28functions%29/Camera "Game (functions)/Camera")

| Name | Description |
| --- | --- |
| FadeOutFront | Fade out the screen. Waits to complete before continuing. This fade specifically comes in front of the menu. |
| FadeInFront | Fade in the screen. Waits to complete before continuing. This fade specifically comes in front of the menu. |
| FadeOut | Fade out the screen. Waits to complete before continuing. |
| FadeIn | Fade into the screen. Waits to complete before continuing. |
| MoveCamera | Centers the camera on a position. |
| MoveCameraToChara | Centers the camera on a character.  As we are simply moving the camera to a character, this will simply set ViewCenter and not ViewOffset. |
| GetCameraCenter | Gets the current center of the camera. |
| IsCameraOnChar | Determines whether the camera is centered relative to the player. |

### Team

Main article: [Game (functions)/Team](https://wiki.pmdo.pmdcollab.org/wiki/Game_%28functions%29/Team "Game (functions)/Team")

| Name | Description |
| --- | --- |
| GetTeamLeaderIndex | Returns the index of the currently player controlled entity in the party. |
| SetTeamLeaderIndex | Sets the leader to the chosen index within the party. |
| SetCanSwitch | Prevents or allows the switching of leaders for the save file. |
| SetCanRecruit | Prevents or allows the joining of recruits for the save file. |
| GetPlayerPartyCount | Returns the player party count. Does not include guests. |
| GetPlayerPartyTable | Return the party as a LuaTable. Does not include guests. |
| GetPlayerPartyMember | Gets the character at the specified index within the player's team. |
| AddPlayerTeam | Adds a character to the player's team. |
| RemovePlayerTeam | Removes the character from the team, placing its item back in the inventory. |
| GetPlayerGuestCount | Gets the number of guests currently in the player's party. |
| GetPlayerGuestTable | Return the guests as a LuaTable |
| GetPlayerGuestMember | Gets the character at the specified index within the player's guests. |
| AddPlayerGuest | Adds a character to the player's guests. |
| RemovePlayerGuest | Removes the character from the team's guests, placing its item back in the inventory. |
| GetPlayerAssemblyCount | Gets the number of characters currently in the player's assembly. |
| GetPlayerAssemblyTable | Return the assembly as a LuaTable |
| GetPlayerAssemblyMember | Gets the character at the specified index within the player's assembly. |
| AddPlayerAssembly | Adds a character to the player's assembly. |
| RemovePlayerAssembly | Removes the character from the assembly, placing its item back in the inventory. |

### Characters

Main article: [Game (functions)/Characters](https://wiki.pmdo.pmdcollab.org/wiki/Game_%28functions%29/Characters "Game (functions)/Characters")

| Name | Description |
| --- | --- |
| SetCharacterNickname | Sets a character's nickname |
| GetCharacterNickname | Gets the character nickname |
| SetTeamName | Sets the name of the player's team |
| GetTeamName | Gets the name of the player's team |
| CanRelearn | Checks if the character can relearn any skills. |
| CanForget | Checks if the character can forget any skills. |
| CanLearn | Checks if the character can learn any skills. |
| CheckLevelSkills | Checks the levels gained by a character and prompts to learn all skills along the levels. Waits until all skills have been accepted or declined before continuing. |
| TryLearnSkill | Attempts to give a new skill to the specified character, prompting to replace an old one if they are full. Waits until the skill has been accepted or declined before continuing. |
| LearnSkill | Gives a new skill to a specified character. Fails if the character's skills are full. |
| ForgetSkill | Removed a skill from the specified character. |
| LockSkill | Makes a skill impossible to forget or replace for the specified character. Note that this only affects normal gameplay. Scripts can still freely get rid of the skill. |
| UnlockSkill | Unlocks a previously locked skill for the specified character, making it possible to be forgotten or replaced during normal gameplay. |
| SetCharacterSkill | Gives a new skill to a specified character, replacing a specifically chosen slot. |
| GetCharacterSkill | Gets the skill from a specified character and specified slot. |
| CanPromote | Checks if the character can be promoted to a new class. |
| GetAvailablePromotions | Gets a list of possible classes that the character can prmote to. |
| PromoteCharacter | Promotes a character ot a new class. |

### Inventory

Main article: [Game (functions)/Inventory](https://wiki.pmdo.pmdcollab.org/wiki/Game_%28functions%29/Inventory "Game (functions)/Inventory")

| Name | Description |
| --- | --- |
| FindPlayerItem | Finds an item in the player's team and returns its slot within the inventory or among its team's equips. |
| GetPlayerEquippedCount | Get the number of items equipped by players. Does not include guests. |
| GetPlayerBagCount | Get the number of items in the bag. |
| GetPlayerBagLimit | Gets the maximum amount of item the player's team can carry. |
| GetPlayerEquippedItem | Gets the equipped item for the character in the specified slot. |
| GetGuestEquippedItem | Gets the equipped item for the character in the specified guest slot. |
| GivePlayerItem | Gives an item and adds it to the player team's bag. |
| GivePlayerItem | Gives an item and adds it to the player team's bag. |
| GetPlayerBagItem | Gets the item found at the specified slot of the player's bag. |
| TakePlayerBagItem | Remove an item from player inventory |
| TakePlayerEquippedItem | Remove the equipped item from a chosen member of the team |
| TakeGuestEquippedItem | Remove the equipped item from a chosen guest of the team |
| GetPlayerStorageCount | Get the amount of items in the player's storage |
| GetPlayerStorageItemCount | Get the amount of a specific item in the player's storage |
| GivePlayerStorageItem | Gives an item and adds it to the player team's storage. |
| GivePlayerStorageItem | Gives an item and adds it to the player team's storage. |
| TakePlayerStorageItem | Takes an item from the storage |
| DepositAll | Takes all items in the player team's bag and equipped items, and deposits them in storage. |
| GetPlayerMoney | Gets the amount of money the player currently has on hand. |
| AddToPlayerMoney | Adds money to the player's wallet. |
| RemoveFromPlayerMoney | Removes money from the player's wallet. |
| GetPlayerMoneyBank | Gets the amount of money in the player's bank |
| AddToPlayerMoneyBank | Adds money to the player's bank. |
| RemoveFromPlayerMoneyBank | Removes money from the player's bank. |

### Utils

Main article: [Game (functions)/Utils](https://wiki.pmdo.pmdcollab.org/wiki/Game_%28functions%29/Utils "Game (functions)/Utils")

| Name | Description |
| --- | --- |
| IsKeyDown | Checks if a player is making a certain physical keyboard input. |
| IsInputDown | Checks if a player is making a certain game input. |
| QueueLeaderEvent | Prepares an event to execute on the next frame. |
| WaitFrames | Waits for a specified number of frames before continuing. |
| VectorToDirection | Turns a vector (preferably a unit vector) into a cardinal or diagonal direction. |
| VectorToDirection | Convenience function to get a vector's components from lua numbers(doubles) |
| RandomDirection | Generates a random direction. |

### Misc

Main article: [Game (functions)/Misc](https://wiki.pmdo.pmdcollab.org/wiki/Game_%28functions%29/Misc "Game (functions)/Misc")

| Name | Description |
| --- | --- |
| GroundSave | Saves the game while in ground mode. |
| GetModDiff | Checks to see if the specified mod has differences from the current save file. |
| SetupLuaFunctions | Initializes any LuaFunctions found in the class. Automatically on lua initialization. |

## Ground

Main article: [Ground (functions)](https://wiki.pmdo.pmdcollab.org/wiki/Ground_%28functions%29 "Ground (functions)")

### Entities

Main article: [Ground (functions)/Entities](https://wiki.pmdo.pmdcollab.org/wiki/Ground_%28functions%29/Entities "Ground (functions)/Entities")

| Name | Description |
| --- | --- |
| Hide | Hides an entity. |
| Unhide | Unhides an entity. |
| RemoveObject | Deletes an object from the ground map, identified by its instance name. |
| RemoveCharacter | Deletes a character from the ground map, identified by its instance name. |
| CreateCharacterFromCharData | Creates a ground character, given a dungeon character. |
| RefreshPlayer | Reloads the controllable player's character data to be the current team's leader. |
| SetPlayer | Sets the controllable player to use new character data. |
| SpawnerDoSpawn | Make the specified spawner run its spawn method. |
| SpawnerSetSpawn | Sets the character to the specified spawner |

### Entity Movement

Main article: [Ground (functions)/Movement](https://wiki.pmdo.pmdcollab.org/wiki/Ground_%28functions%29/Movement "Ground (functions)/Movement")

| Name | Description |
| --- | --- |
| CharTurnToChar | Makes a character turn to face another character instantly. |
| CharTurnToCharAnimated | Makes a character do an animated turn to face another character over the specified time. Clockwise or counter-clockwise are chosen based on the closest direction. Waits until the operation is completed. |
| CharAnimateTurn | Makes a character do an animated turn to face a chosen direction over the specified time. Must specify clockwise or counter-clockwise. Waits until the operation is completed. |
| CharAnimateTurnTo | Makes a character do an animated turn to face a chosen direction over the specified time. Waits until the operation is completed. |
| EntTurn | Makes a ground entity turn to face a direction. Useful for non-character objects. |
| TeleportTo | Repositions the ground entity in a specified location. |
| MoveInDirection | Make ground character move in a direction. |
| MoveToPosition | Make ground character move to a position. |
| MoveToMarker | Make ground character move to a ground marker. |
| MoveObjectToPosition | Make ground object move to a position. |
| AnimateInDirection | Make a ground character move in a direction with custom animation |
| AnimateToPosition | Make a ground entity move to a position with custom animation |
| ActionToPosition | Make a ground entity action to a position with custom animation |

### Animation

Main article: [Ground (functions)/Animation](https://wiki.pmdo.pmdcollab.org/wiki/Ground_%28functions%29/Animation "Ground (functions)/Animation")

| Name | Description |
| --- | --- |
| CharSetEmote | Make a character emote on the ground map. |
| CharSetDrawEffect | Sets the ground character's draw effect to become invisible, shaking, still, etc. |
| CharEndDrawEffect | Sets the ground character's draw effect to become invisible, shaking, still, etc. |
| CharGetAnimFallback | Gets the fallback animation for the character. |
| CharGetAnim | Gets a character's current animation as a string. |
| CharGetAnimPoint | Gets the chosen action point of the character at this specific frame. |
| CharSetAnim | Set a character's animation. |
| CharEndAnim | Stops a character's current animation, reverting them to default idle. |
| CharWaitAnim | Makes the character perform an animation and waits until it's over. |
| CharSetAction | Set a character's action. |
| CharWaitAction | Makes the character perform an action and waits until it's over. |
| ObjectSetAnim | Sets a ground object's animation. After it finishes, it will return to the default animation. |
| ObjectSetDefaultAnim | Sets a ground object's default animation. |
| ObjectWaitAnimFrame | Waits for the object to reach a specific frame before continuing. |

### Vfx

Main article: [Ground (functions)/Vfx](https://wiki.pmdo.pmdcollab.org/wiki/Ground_%28functions%29/Vfx "Ground (functions)/Vfx")

| Name | Description |
| --- | --- |
| PlayVFX | Plays a VFX using a finite emitter that generates BaseAnims. |
| PlayVFX | Plays a VFX that has a start position and an end position. It uses a finite emitter that generates BaseAnims. |
| PlayVFXAnim | Plays a VFX using just a BaseAnim |
| MoveScreen | Plays a screen-moving effect. |

### Misc

Main article: [Ground (functions)/Misc](https://wiki.pmdo.pmdcollab.org/wiki/Ground_%28functions%29/Misc "Ground (functions)/Misc")

| Name | Description |
| --- | --- |
| HandoutEXP | Gives a character a set amount of EXP. Also handles leveling up and learning new moves. |
| AddMapStatus | Adds a mapstatus to the ground map. Map statuses only have an aesthetic effect in ground maps. |
| RemoveMapStatus | Removes a map status from the ground map. |
| SetupLuaFunctions | Initializes any LuaFunctions found in the class. Automatically on lua initialization. |

## Sound

Main article: [Sound (functions)](https://wiki.pmdo.pmdcollab.org/wiki/Sound_%28functions%29 "Sound (functions)")

| Name | Description |
| --- | --- |
| PlaySE | Plays a sound effect |
| PlayBattleSE | Plays a sound effect specifically from the Battle/ subdirectory |
| WaitSE | Wait for the currently played sound effect to end. CURRENTLY NOT IMPLEMENTED PROPERLY. |
| LoopSE | Plays a continuous sound effect. |
| LoopBattleSE | Plays a continuous sound effect |
| StopSE | Stops a continuous sound effect |
| StopBattleSE | Stops a continuous sound effect |
| FadeInSE | Plays a continuous sound effect, fading in over a specified amount of time. |
| FadeInBattleSE | Plays a continuous sound effect, fading in over a specified amount of time |
| FadeOutSE | Stops a continuous sound effect, fading out over a specified amount of time |
| FadeOutBattleSE | Stops a continuous sound effect, fading out over a specified amount of time |
| PlayFanfare | Plays a sound effect that temporarily mutes the music for its duration |
| WaitFanfare | This function waits for the currently playing fanfare to complete before continuing. |
| PlayBGM | Plays a song, replacing the current one. |
| StopBGM | Stops playing the current song. |
| FadeOutBGM | Fades out the current song. |
| SetBGMVolume | Sets the current volume of the song. |
| GetCurrentSong | Gets the currently playing song. If the current song is fading out, gets the next song to be played. |
| SetupLuaFunctions | Initializes any LuaFunctions found in the class. Automatically on lua initialization. |

## Strings

Main article: [Strings (functions)](https://wiki.pmdo.pmdcollab.org/wiki/Strings_%28functions%29 "Strings (functions)")

| Name | Description |
| --- | --- |
| MakePackageStringTable | DEPRECATED |
| LoadPackageStringTable | Loads the string table of the current map to MapStrings. Do not call this function from lua. It is called automatically on map load. |
| LocaleCode | Gets the current language setting of the game. |
| ShiftString | Takes all letters of a string and shifts their unicode values forward by a specified amount. Useful for special character sets. |
| Format | Formats a string. Will unescape escaped characters and process grammar tags. |
| FormatKey | Takes the string key, looks up the string it represents, and formats it. Will unescape escaped characters and process grammar tags. |
| LocalKeyString | Gets the string representing a button or key. |
| CreateList | Builds a single string of comma separated elements. |
| SetupLuaFunctions | Initializes any LuaFunctions found in the class. Automatically on lua initialization. |

## Task

Main article: [Task (functions)](https://wiki.pmdo.pmdcollab.org/wiki/Task_%28functions%29 "Task (functions)")

| Name | Description |
| --- | --- |
| StartEntityTask | Helper function to make an entity run the specified task. Will not replace a running task! Tasks are run interlocked with the script processing and game processing, and characters cannot run multiple tasks at the same time. |
| StopEntityTask | Helper function to force stop an entity's current task. |
| WaitStartEntityTask | Makes an entity run a specified task, and waits for it to complete. |
| StartScriptLocalCoroutine | A wrapper around the StartCoroutine method of the GameManager, so lua coroutines can be executed locally to the script context. It will block the script execution while its executed. |
| BranchCoroutine | Starts a new coroutine to run parallel to the current execution. Useful for performing multiple actions at once. |
| JoinCoroutines | Waits for all specified coroutines to finish before continuing execution. Often used for coroutines created using TASK:BranchCoroutine() |
| SetupLuaFunctions | Initializes any LuaFunctions found in the class. Automatically on lua initialization. |

## UI

Main article: [UI (functions)](https://wiki.pmdo.pmdcollab.org/wiki/UI_%28functions%29 "UI (functions)")

### Dialogue

Main article: [UI (functions)/Dialogue](https://wiki.pmdo.pmdcollab.org/wiki/UI_%28functions%29/Dialogue "UI (functions)/Dialogue")

| Name | Description |
| --- | --- |
| WaitInput | Waits for the player to press a button before continuing. |
| WaitForPlayerInput | Waits for the player to press at least one of the given inputs before continuing. If an empty table is supplied, then this function behaves like WaitInput. |
| WaitShowTimedDialogue | Displays a dialogue box with text, waiting until the specified time has expired. Takes a string, integer, and an optional callback as an argument. |
| TextDialogue | [LuaFunction] WaitShowTimedDialogue Sets the current dialogue text to be shown. Requires WaitDialog to actually display. |
| ChoiceMenuYesNo | Ask a question answered by yes or no via character dialogue to the player. UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the integer value indicating the result of the menu, UI:ChoiceResult() must be called.  The Yes/No menu returns 1 for yes, and 0 for no. |
| SetCustomDialogue | Displays a custom dialogue of the caller's choice.  UI:WaitDialog() must be called afterwards for the dialogue to be actually displayed, and for execution to suspend until the dialogue is completed. |

#### Fade Effects

Main article: [UI (functions)/Fade Effects](https://wiki.pmdo.pmdcollab.org/wiki/UI_%28functions%29/Fade_Effects "UI (functions)/Fade Effects")

| Name | Description |
| --- | --- |
| WaitShowVoiceOver | Displays a voice over, waiting until the player completes it. |
| TextVoiceOver | [LuaFunction] WaitShowVoiceOver Sets the current voice-over text to be shown. Requires WaitDialog to actually display. |
| TextPopUp | Makes text pop up in the bottom-left corner by default. Displays concurrently with any other process. |
| WaitShowTitle | Fades in text in the format of a title drop, then waits until the fade-in is complete. |
| TextShowTitle | [LuaFunction] WaitShowTitle Fades in text in the format of a title drop. Requires WaitDialog to actually display. |
| WaitHideTitle | Fades out the text set in a title drop, waiting until the fade-out is complete. |
| TextFadeTitle | [LuaFunction] WaitHideTitle Fades out the text set in a title drop. Requires WaitDialog to actually fade. |
| WaitShowBG | Fades in a chosen background image, with a chosen framerate, at a certain fade time, waiting until the fade-in is complete. |
| ShowBG | [LuaFunction] WaitShowBG Prepares to fade in a chosen background image, with a chosen framerate, at a certain fade time. Requires WaitDialog to actually display. |
| WaitHideBG | Fades out the current background image, waiting until the fade-out is complete. |
| FadeBG | [LuaFunction] WaitHideBG Prepares a fade-out of the current image. Requires WaitDialog to actually display. |

### Speakers

Main article: [UI (functions)/Speakers](https://wiki.pmdo.pmdcollab.org/wiki/UI_%28functions%29/Speakers "UI (functions)/Speakers")

| Name | Description |
| --- | --- |
| ExportSpeakerSettings | Exports the speaker settings as a lua table. |
| ImportSpeakerSettings | Imports speaker settings from a lua table. |
| ResetSpeaker | Clears the current speaker, so none is displayed the next time TextDialogue is called. This also resets any custom dialogue box positions, portrait positions, and choice positions. |
| SetSpeaker | Sets the speaker to be displayed during the following calls to the TextDialogue functions. It resets speaker emotion. |
| SetSpeaker | Sets the speaker to be displayed during the following calls to the TextDialogue functions. It takes an existing GroundChar as a parameter. It resets speaker emotion. |
| SetSpeaker | Sets the speaker to be displayed during the following calls to the TextDialogue functions. It takes an existing Character as a parameter. It resets speaker emotion. |
| SetSpeakerReverse | Reverses the speaker orientation to face left instead of right. This depends on the boolean passed in. |
| SetChoiceLoc | Sets the position of the choices for a question dialog. |
| ResetChoiceLoc | Sets the position of the choices for a question dialog back to default. |
| SetBounds | Sets the position and size of the dialogue box. |
| ResetBounds | Resets the position and size of the dialogue box. |
| SetCenter | Sets the centering of the text in the textbox. |
| SetSpeakerLoc | Sets the position of the speaker in a dialogue box. |
| ResetSpeakerLoc | Resets the position of the speaker in a dialogue box. |
| SetSpeakerEmotion | Sets the emotion of the speaker in the dialogue box. |
| SetAutoFinish | Makes the text automatically finish when it shows up. |
| SetSe | Sets the speaker sound effect and speak frames played in the TextDialogue functions. |
| SetSe | Sets the speaker sound effect played in the TextDialogue functions. |
| SetSpeakTime | Sets the speak frames played in the TextDialogue functions. |
| ResetSe | Resets to the default speaker sound effect and speaker frames. |
| WaitDialog | Displays the currently set dialogue box and waits for the player to complete it. |

### Menus

Main article: [UI (functions)/Menus](https://wiki.pmdo.pmdcollab.org/wiki/UI_%28functions%29/Menus "UI (functions)/Menus")

| Name | Description |
| --- | --- |
| BeginChoiceMenu | Marks the start of a multi-choice menu. UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the integer value indicating the result of the menu, UI:ChoiceResult() must be called. |
| BeginMultiPageMenu | Marks the start of a multi-paged choice menu. UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the integer value indicating the result of the menu, UI:ChoiceResult() must be called. |
| SetCustomMenu | Displays a custom menu of the caller's choice.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the menu is exited. |
| ChoiceResult | Get the result of the last choice menu |
| GetChoiceAction | Creates an action that sets the choice result to a specified object. |
| WaitForChoice | Displays the currently set choice menu and waits for the player's selection to complete. |
| ProcessMenuCoroutine | Opens the provided menu and starts the menu coroutine. This should be called only from non-coroutine sources. |

### Function Menus

Main article: [UI (functions)/Function Menus](https://wiki.pmdo.pmdcollab.org/wiki/UI_%28functions%29/Function_Menus "UI (functions)/Function Menus")

| Name | Description |
| --- | --- |
| NameMenu | Displays the name input box.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the string value indicating the result of the menu, UI:ChoiceResult() must be called. |
| AssemblyMenu | Displays a menu for replacing party members with the assembly.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the boolean value indicating whether the team composition was changed or not, UI:ChoiceResult() must be called. |
| ShopMenu | Displays the Shop menu.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the table indicating the indices of items chosen, UI:ChoiceResult() must be called. |
| SellMenu | Displays the Sell menu.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the table indicating the indices of items to sell, UI:ChoiceResult() must be called. |
| StorageMenu | Displays the Storage menu for which to exchange items in the inventory with.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the menu is exited. |
| WithdrawMenu | Displays the Storage menu for which to withdraw from.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the menu is exited. |
| BankMenu | Displays the Bank menu.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the menu is exited. |
| SpoilsMenu | Displays the Spoils menu.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the menu is exited. |
| AppraiseMenu | Displays the Appraisal menu.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the table indicating the indices of items chosen, UI:ChoiceResult() must be called. |
| TutorTeamMenu | Displays the Tutor Team menu.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the integer representing the chosen team member, UI:ChoiceResult() must be called. |
| RelearnMenu | Displays the Relearn menu for a character.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the integer representing the chosen skill, UI:ChoiceResult() must be called. |
| LearnMenu | Displays the Learn menu for a character to replace an existing skill with a new one.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the integer representing the chosen skill, UI:ChoiceResult() must be called. |
| ForgetMenu | Displays the Forget menu for a character to forget a skill.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the integer representing the chosen skill, UI:ChoiceResult() must be called. |
| ShowPromoteMenu | Displays the Promote menu to choose a team member to promote.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the integer representing the chosen team slot, UI:ChoiceResult() must be called. |
| CanSwapMenu | Determines if the swap menu has any valid items to display. |
| SwapMenu | Displays the swap menu with a table of goods and prices. |
| TributeMenu | Displays the tribute menu. |
| ShowMusicMenu | Displays the Music menu to browse music for the game.  UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the string representing the chosen song, UI:ChoiceResult() must be called. |
| DungeonChoice | Ask to enter a destintion via character dialogue to the player. UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the integer value indicating the result of the menu, UI:ChoiceResult() must be called.  The Yes/No menu returns 1 for yes, and 0 for no. |
| DestinationMenu | Marks the start of a choice menu for choosing destinations, showing a preview of restrictions and requirements for dungeons. UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the ZoneLoc indicating the chosen destination, UI:ChoiceResult() must be called. |

### Multiplayer

Main article: [UI (functions)/Multiplayer](https://wiki.pmdo.pmdcollab.org/wiki/UI_%28functions%29/Multiplayer "UI (functions)/Multiplayer")

| Name | Description |
| --- | --- |
| ServersMenu | Displays the Servers menu. |
| ContactsMenu | Displays the contacts menu. |
| SOSMenu | Displays the SOS menu. |
| AOKMenu | Displays the AOK menu. |
| PeersMenu | Displays the Peers menu. |
| ShowConnectMenu | Displays the connection menu. |
| CurrentActivityMenu | Displays the current activity of the connected peer. |
| ChooseMonsterMenu | Marks the start of a choice menu for choosing monsters, showing a preview of their appearances via portrait. UI:WaitForChoice() must be called afterwards for the menu to be actually displayed, and for execution to suspend until the choice is returned. Then to retrieve the string indicating the chosen species, UI:ChoiceResult() must be called. |

### Misc

Main article: [UI (functions)/Misc](https://wiki.pmdo.pmdcollab.org/wiki/UI_%28functions%29/Misc "UI (functions)/Misc")

| Name | Description |
| --- | --- |
| Reset | Resets te entire UI instance. |
| SetupLuaFunctions | Initializes any LuaFunctions found in the class. Automatically on lua initialization. |
