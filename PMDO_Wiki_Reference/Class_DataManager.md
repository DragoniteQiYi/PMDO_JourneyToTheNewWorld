# Class:DataManager

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Class:DataManager

This page documents the DataManager class for Lua scripting.

As a singleton class, it can be accessed from Lua with `_DATA`.

## InitInstance

`_DATA:InitInstance()`

{{{description}}}

## Instance

`_DATA.Instance`

**Type:** `RogueEssence.Data.DataManager`

{{{description}}}

## DataIndices

`_DATA.DataIndices`

**Type:** `System.Collections.Generic.Dictionary{RogueEssence.Data.DataManager.DataType,RogueEssence.Data.EntryDataIndex}`

{{{description}}}

## Start

`_DATA.Start`

**Type:** `RogueEssence.Data.StartParams`

The parameters governing the start of the game.
Such as starting character, map, level, etc.

## DefaultMonsterID

`_DATA.DefaultMonsterID`

**Type:** `RogueEssence.Dungeon.MonsterID`

{{{description}}}

## DefaultMonster

`_DATA.DefaultMonster`

**Type:** `System.String`

The monster ID consiered default for purposes of initialization

## DefaultSkill

`_DATA.DefaultSkill`

**Type:** `System.String`

The skill ID considered default for purposes of initialization and comparing to "nothing"

## DefaultIntrinsic

`_DATA.DefaultIntrinsic`

**Type:** `System.String`

The skill ID considered default for purposes of initialization and comparing to "nothing"

## DefaultMapStatus

`_DATA.DefaultMapStatus`

**Type:** `System.String`

The skill ID considered default for purposes of initialization and comparing to "nothing"

## DefaultElement

`_DATA.DefaultElement`

**Type:** `System.String`

The skill ID considered default for purposes of initialization and comparing to "nothing"

## DefaultTile

`_DATA.DefaultTile`

**Type:** `System.String`

The skill ID considered default for purposes of initialization and comparing to "nothing"

## DefaultZone

`_DATA.DefaultZone`

**Type:** `System.String`

The skill ID considered default for purposes of initialization.

## DefaultRank

`_DATA.DefaultRank`

**Type:** `System.String`

The skill ID considered default for purposes of initialization.

## DefaultAI

`_DATA.DefaultAI`

**Type:** `System.String`

The skill ID considered default for purposes of initialization.

## DefaultSkin

`_DATA.DefaultSkin`

**Type:** `System.String`

The skill ID considered default for purposes of initialization.

## GetDefaultData

`_DATA:GetDefaultData(dataType)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.DataManager.DataType | RogueEssence.Data.DataManager.DataType |  |

#### Returns

| Type | Description |
| --- | --- |
| System.String |  |

## GenFloor

`_DATA.GenFloor`

**Type:** `System.String`

The terrain ID considered to be universally "floor" in random dungeon generation

## GenWall

`_DATA.GenWall`

**Type:** `System.String`

The terrain ID considered to be universally "wall" in random dungeon generation

## GenUnbreakable

`_DATA.GenUnbreakable`

**Type:** `System.String`

The terrain ID considered to be universally "unbreakable" in random dungeon generation

## UniversalEvent

`_DATA.UniversalEvent`

**Type:** `RogueEssence.Data.UniversalBaseEffect`

{{{description}}}

## UniversalData

`_DATA.UniversalData`

**Type:** `RogueElements.TypeDict{RogueEssence.Data.BaseData}`

{{{description}}}

## HealFX

`_DATA.HealFX`

**Type:** `RogueEssence.Content.BattleFX`

{{{description}}}

## RestoreChargeFX

`_DATA.RestoreChargeFX`

**Type:** `RogueEssence.Content.BattleFX`

{{{description}}}

## LoseChargeFX

`_DATA.LoseChargeFX`

**Type:** `RogueEssence.Content.BattleFX`

{{{description}}}

## NoChargeFX

`_DATA.NoChargeFX`

**Type:** `RogueEssence.Content.EmoteFX`

{{{description}}}

## ElementFX

`_DATA.ElementFX`

**Type:** `RogueEssence.Content.BattleFX`

{{{description}}}

## IntrinsicFX

`_DATA.IntrinsicFX`

**Type:** `RogueEssence.Content.BattleFX`

{{{description}}}

## SendHomeFX

`_DATA.SendHomeFX`

**Type:** `RogueEssence.Content.BattleFX`

{{{description}}}

## ItemLostFX

`_DATA.ItemLostFX`

**Type:** `RogueEssence.Content.BattleFX`

{{{description}}}

## WarpFX

`_DATA.WarpFX`

**Type:** `RogueEssence.Content.BattleFX`

{{{description}}}

## KnockbackFX

`_DATA.KnockbackFX`

**Type:** `RogueEssence.Content.BattleFX`

{{{description}}}

## JumpFX

`_DATA.JumpFX`

**Type:** `RogueEssence.Content.BattleFX`

{{{description}}}

## ThrowFX

`_DATA.ThrowFX`

**Type:** `RogueEssence.Content.BattleFX`

{{{description}}}

## Save

`_DATA.Save`

**Type:** `RogueEssence.Data.GameProgress`

The current save file, loaded into memory

## MsgLog

`_DATA.MsgLog`

**Type:** `System.Collections.Generic.List{System.String}`

{{{description}}}

## HideObjects

`_DATA.HideObjects`

**Type:** `System.Boolean`

{{{description}}}

## HideChars

`_DATA.HideChars`

**Type:** `System.Boolean`

{{{description}}}

## RecordingReplay

`_DATA.RecordingReplay`

**Type:** `System.Boolean`

{{{description}}}

## CurrentReplay

`_DATA.CurrentReplay`

**Type:** `RogueEssence.Data.ReplayData`

{{{description}}}

## Loading

`_DATA.Loading`

**Type:** `RogueEssence.Data.DataManager.LoadMode`

{{{description}}}

## InitBase

`_DATA:InitBase()`

{{{description}}}

## InitDataIndices

`_DATA:InitDataIndices()`

{{{description}}}

## InitData

`_DATA:InitData()`

{{{description}}}

## InitDataDirs

`_DATA:InitDataDirs(baseFolder)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

## InitSaveDirs

`_DATA:InitSaveDirs()`

{{{description}}}

## Conversions

`_DATA.Conversions`

**Type:** `System.Collections.Generic.Dictionary{RogueEssence.Data.DataManager.DataType,System.Collections.Generic.Dictionary{System.String,System.String`

{{{description}}}

|notes=
}}

## LoadConversions

`_DATA:LoadConversions()`

{{{description}}}

## MapAssetName

`_DATA:MapAssetName(dataType, asset)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.DataManager.DataType | RogueEssence.Data.DataManager.DataType |  |
| System.Int32 | System.Int32 |  |

#### Returns

| Type | Description |
| --- | --- |
| System.String |  |

## MapAssetName

`_DATA:MapAssetName(dataType, asset)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.DataManager.DataType | RogueEssence.Data.DataManager.DataType |  |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| System.String |  |

## LoadUniversalIndices

`_DATA:LoadUniversalIndices()`

{{{description}}}

## SaveStartParams

`_DATA:SaveStartParams()`

{{{description}}}

## Unload

`_DATA:Unload()`

{{{description}}}

## LoadIndex

`_DATA:LoadIndex(type)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.DataManager.DataType | RogueEssence.Data.DataManager.DataType |  |

## GetIndex

`_DATA:GetIndex(type)`

Index paths are modified like mods. However, if multiple mods have conflicting indices, a combined index must be generated.

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.DataManager.DataType | RogueEssence.Data.DataManager.DataType |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.EntryDataIndex |  |

## LoadIndexFull

`_DATA:LoadIndexFull(type, cache)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.DataManager.DataType | RogueEssence.Data.DataManager.DataType |  |
| System.Collections.Generic.Dictionary{System.String,{T | System.Collections.Generic.Dictionary{System.String,{T | Description |

|notes=
}}

## LoadCacheFull

`_DATA:LoadCacheFull(type, cache)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.DataManager.DataType | RogueEssence.Data.DataManager.DataType |  |
| System.Collections.Generic.Dictionary{System.String,{T | System.Collections.Generic.Dictionary{System.String,{T | Description |

|notes=
}}

## SaveIndex

`_DATA:SaveIndex(type)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.DataManager.DataType | RogueEssence.Data.DataManager.DataType |  |

## ContentResaved

`_DATA:ContentResaved(dataType, entryNum, data, asDiff)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.DataManager.DataType | RogueEssence.Data.DataManager.DataType |  |
| System.String | System.String |  |
| RogueEssence.Data.IEntryData | RogueEssence.Data.IEntryData |  |
| System.Boolean | System.Boolean |  |

## ContentChanged

`_DATA:ContentChanged(dataType, entryNum, data)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.DataManager.DataType | RogueEssence.Data.DataManager.DataType |  |
| System.String | System.String |  |
| RogueEssence.Data.IEntryData | RogueEssence.Data.IEntryData |  |

## LoadNamespacedData

`_DATA:LoadNamespacedData(namespacedNum, subPath, ext)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.String | System.String |  |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| {T} |  |

## LoadModEntryData

`_DATA:LoadModEntryData(mod, indexNum, subPath, ext)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.ModHeader | RogueEssence.ModHeader |  |
| System.String | System.String |  |
| System.String | System.String |  |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| {T} |  |

## LoadEntryData

`_DATA:LoadEntryData(indexNum, subPath, ext)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.String | System.String |  |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| {T} |  |

## LoadModData

`_DATA:LoadModData(mod, subpath, file, ext)`

Loads the data of the specified mod, and does not fall back to base if there is no mod.
Used for reserializing/resaving where either the base or the mod's files ONLY need to be resaved.

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.ModHeader | RogueEssence.ModHeader |  |
| System.String | System.String |  |
| System.String | System.String |  |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| {T} |  |

## LoadData

`_DATA:LoadData(subpath, file, ext)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.String | System.String |  |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| {T} |  |

## LoadObject

`_DATA:LoadObject(path, diffpaths)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.String[] | System.String[] |  |

#### Returns

| Type | Description |
| --- | --- |
| {T} |  |

## GetEntryDataModStatus

`_DATA:GetEntryDataModStatus(indexNum, subPath)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.DataManager.ModStatus |  |

## GetDataModStatus

`_DATA:GetDataModStatus(subpath, file, ext)`

Returns information of how a file has been modded, if at all.

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.String | System.String |  |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.DataManager.ModStatus |  |

## SaveEntryData

`_DATA:SaveEntryData(indexNum, subPath, entry, savePolicy)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.String | System.String |  |
| RogueEssence.Data.IEntryData | RogueEssence.Data.IEntryData |  |
| RogueEssence.Data.DataManager.SavePolicy | RogueEssence.Data.DataManager.SavePolicy |  |

## SaveData

`_DATA:SaveData(entry, subpath, file, ext, savePolicy)`

Provides the ability to save it as a file or a mod based on whether it was loaded as a diff or not... aka whether it was a diff as a file or not.
Can also save explicitly as a file or diff.

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.Object | System.Object |  |
| System.String | System.String |  |
| System.String | System.String |  |
| System.String | System.String |  |
| RogueEssence.Data.DataManager.SavePolicy | RogueEssence.Data.DataManager.SavePolicy |  |

## SaveObject

`_DATA:SaveObject(entry, path, basePath)`

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.Object | System.Object |  |
| System.String | System.String | The location to save the file if not as a patch. |
| System.String | System.String | The base file to diff the json against. Do not save as a patch if left blank. |

## DeleteEntryData

`_DATA:DeleteEntryData(indexNum, subPath)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.String | System.String |  |

## DeleteData

`_DATA:DeleteData(subpath, file, ext)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.String | System.String |  |
| System.String | System.String |  |

## DeleteObject

`_DATA:DeleteObject(path)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

## PreLoadZone

`_DATA:PreLoadZone(index)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

## GetZone

`_DATA:GetZone(index)`

Gets a zone based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.ZoneData |  |

## GetMap

`_DATA:GetMap(name)`

Gets a map based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Dungeon.Map |  |

## GetGround

`_DATA:GetGround(name)`

Gets a ground map based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Ground.GroundMap |  |

## GetSkill

`_DATA:GetSkill(index)`

Gets the data for a skill based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.SkillData |  |

## GetItem

`_DATA:GetItem(index)`

Gets the data for an item based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.ItemData |  |

## GetAutoTile

`_DATA:GetAutoTile(index)`

Gets the data for an autotile based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.AutoTileData |  |

## GetMonster

`_DATA:GetMonster(index)`

Gets the data for a monster based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.MonsterData |  |

## GetStatus

`_DATA:GetStatus(index)`

Gets the data for a status effect based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.StatusData |  |

## GetIntrinsic

`_DATA:GetIntrinsic(index)`

Gets the data for an intrinsic (passive ability) based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.IntrinsicData |  |

## GetMapStatus

`_DATA:GetMapStatus(index)`

Gets the data for a map-wide status effect based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.MapStatusData |  |

## GetTile

`_DATA:GetTile(index)`

Gets the data for a tile, such as stairs or traps, based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.TileData |  |

## GetTerrain

`_DATA:GetTerrain(index)`

Gets the data for a terrain type based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.TerrainData |  |

## GetEmote

`_DATA:GetEmote(index)`

Gets the data for an emote based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.EmoteData |  |

## GetElement

`_DATA:GetElement(index)`

Gets the data for an elemental type based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.ElementData |  |

## GetGrowth

`_DATA:GetGrowth(index)`

Gets the data for a growth group based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.GrowthData |  |

## GetSkillGroup

`_DATA:GetSkillGroup(index)`

Gets the data for a skill-sharing group based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.SkillGroupData |  |

## GetAITactic

`_DATA:GetAITactic(index)`

Gets the data for an ai tactic based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.AITactic |  |

## GetRank

`_DATA:GetRank(index)`

Gets the data for a team rank based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.RankData |  |

## GetSkin

`_DATA:GetSkin(index)`

Gets the data for a skin based on its ID

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.SkinData |  |

## ClearCache

`_DATA:ClearCache(conversionFlags)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.DataManager.DataType | RogueEssence.Data.DataManager.DataType |  |

## BeginPlay

`_DATA:BeginPlay(filePath, zoneId, rogue, seeded, sessionStart)`

Starts recording the quicksave for a new adventure.
From here on, the replayWriter will remain open as a way to continue writing game states and player inputs.

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.String | System.String |  |
| System.Boolean | System.Boolean |  |
| System.Boolean | System.Boolean |  |
| System.DateTime | System.DateTime |  |

## ResumePlay

`_DATA:ResumePlay(replay, sessionResumeTime)`

Called when resuming an adventure from a quicksave.
The quicksave file is loaded and the stream position is set to the end, so that it can continue writing the replay.

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.ReplayData | RogueEssence.Data.ReplayData | The quicksave replay to resume from. |
| System.DateTime | System.DateTime |  |

## LogState

`_DATA:LogState()`

Writes the game state to the current replay. The player must be in dungeon mode.
This is used when the player begins a new dungeon in their adventure. (One adventure can contain a trek through multiple dungeons)

## LogGroundSave

`_DATA:LogGroundSave()`

Writes the game state to the current replay. The player must be in ground mode.
This is used when a player saves in the middle of an adventure in a ground mode rest area.

## LogQuicksave

`_DATA:LogQuicksave()`

Writes the entire game state for faster loading of quicksaves.
Currently not used due to quicksaves still loading from the start of the dungeon and replaying every step up to the current point.

## LogPlay

`_DATA:LogPlay(play)`

Logs a player action to the current quicksave replay.

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Dungeon.GameAction | RogueEssence.Dungeon.GameAction |  |

## LogUIPlay

`_DATA:LogUIPlay(code)`

Logs a player UI action to the current quicksave replay.

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.Int32[] | System.Int32[] |  |

## LogUIStringPlay

`_DATA:LogUIStringPlay(str)`

Logs a string to the current quicksave replay. Used for name inputs.

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

## QueueLogUI

`_DATA:QueueLogUI()`

Starts queueing UI commands to the current replay quicksave.
UI commands need to be queued sometimes, because they may happen mid-action for an action that may fail later.
If a player action fails, it is not logged. Thus, if queues didn't exist, UI actions would be logged for actions that didn't actually happen.

## DequeueLogUI

`_DATA:DequeueLogUI()`

Stops queueing UI commands to the current replay quicksave and writes the current queue to the replay.

## EndPlay

`_DATA:EndPlay(epitaph, outFile)`

Called when an adventure is ended. Closes the replay writing stream and saves the quicksave into a replay.

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.GameProgress | RogueEssence.Data.GameProgress |  |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| System.String |  |

## SaveSessionTime

`_DATA:SaveSessionTime(sessionTime)`

Saves the current session time

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.TimeSpan | System.TimeSpan |  |

## SuspendPlay

`_DATA:SuspendPlay()`

Called when an adventure is suspended. Closes the replay writing stream to allow for clean exit.
Note how nothing else is done aside form closing the stream.
Quicksaves already save every action from the player as it happens, so even if they closed the game there is no lost data.

## ReplaysExist

`_DATA:ReplaysExist()`

{{{description}}}

#### Returns

| Type | Description |
| --- | --- |
| System.Boolean |  |

## FoundRecords

`_DATA:FoundRecords(mainPath, ext)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| System.Boolean |  |

## ContainsNonTrivialFiles

`_DATA:ContainsNonTrivialFiles(files)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String[] | System.String[] |  |

#### Returns

| Type | Description |
| --- | --- |
| System.Boolean |  |

## IsNonTrivialFile

`_DATA:IsNonTrivialFile(file)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| System.Boolean |  |

## GetRecordHeaders

`_DATA:GetRecordHeaders(recordDir, ext)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| System.Collections.Generic.List{RogueEssence.Data.RecordHeaderData} |  |

## GetRecordHeader

`_DATA:GetRecordHeader(file)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.RecordHeaderData |  |

## GetRecord

`_DATA:GetRecord(dir)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.GameProgress |  |

## ReadReplayFile

`_DATA:ReadReplayFile(recordDir)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| System.Byte[] |  |

## ReplaySetFavorite

`_DATA:ReplaySetFavorite(recordDir, favorite_value)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.Boolean | System.Boolean |  |

## LoadReplay

`_DATA:LoadReplay(recordDir, quickload)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| System.Boolean | System.Boolean |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.ReplayData |  |

## CreateQuicksaveFromReplay

`_DATA:CreateQuicksaveFromReplay()`

{{{description}}}

## FindRescueMail

`_DATA:FindRescueMail(filepath, mail, extension)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| RogueEssence.Data.BaseRescueMail | RogueEssence.Data.BaseRescueMail |  |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| System.String |  |

## LoadRescueMail

`_DATA:LoadRescueMail(filename)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.BaseRescueMail |  |

## SaveRescueMail

`_DATA:SaveRescueMail(folderPath, mail, force)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| RogueEssence.Data.BaseRescueMail | RogueEssence.Data.BaseRescueMail |  |
| System.Boolean | System.Boolean |  |

#### Returns

| Type | Description |
| --- | --- |
| System.String |  |

## SaveRescueMail

`_DATA:SaveRescueMail(fullPath, mail)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.String | System.String |  |
| RogueEssence.Data.BaseRescueMail | RogueEssence.Data.BaseRescueMail |  |

## LoadProgress

`_DATA:LoadProgress()`

{{{description}}}

## SetProgress

`_DATA:SetProgress(progress)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.GameProgress | RogueEssence.Data.GameProgress |  |

## GetProgress

`_DATA:GetProgress()`

{{{description}}}

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.MainProgress |  |

## CopyMainGameState

`_DATA:CopyMainGameState()`

{{{description}}}

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.GameState |  |

## SaveMainGameState

`_DATA:SaveMainGameState()`

{{{description}}}

## SaveMainGameState

`_DATA:SaveMainGameState(writer)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.IO.BinaryWriter | System.IO.BinaryWriter |  |

## SaveGameState

`_DATA:SaveGameState(state)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| RogueEssence.Data.GameState | RogueEssence.Data.GameState |  |

## SaveGameState

`_DATA:SaveGameState(writer, state)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.IO.BinaryWriter | System.IO.BinaryWriter |  |
| RogueEssence.Data.GameState | RogueEssence.Data.GameState |  |

## LoadMainGameState

`_DATA:LoadMainGameState(allowUpgrade)`

Returns game progress loaded from the save folder and current zone.

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.Boolean | System.Boolean |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.GameState |  |

## ReadGameState

`_DATA:ReadGameState(reader, allowUpgrade)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.IO.BinaryReader | System.IO.BinaryReader |  |
| System.Boolean | System.Boolean |  |

#### Returns

| Type | Description |
| --- | --- |
| RogueEssence.Data.GameState |  |

## DeleteSaveData

`_DATA:DeleteSaveData()`

{{{description}}}

## DeleteReplayData

`_DATA:DeleteReplayData(includeFav)`

Deletes replays from the replay folder corresponding to the current mod.

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.Boolean | System.Boolean | Favorites will be deleted too. |

## GetRecentMsgs

`_DATA:GetRecentMsgs(entries)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.Int32 | System.Int32 |  |

#### Returns

| Type | Description |
| --- | --- |
| System.Collections.Generic.IEnumerable{System.String} |  |

## GetRecentMsgs

`_DATA:GetRecentMsgs(entriesStart, entriesEnd)`

{{{description}}}

#### Parameters

| Name | Type | Description |
| --- | --- | --- |
| System.Int32 | System.Int32 |  |
| System.Int32 | System.Int32 |  |

#### Returns

| Type | Description |
| --- | --- |
| System.Collections.Generic.IEnumerable{System.String} |  |

## References

<https://github.com/RogueCollab/RogueEssence/blob/master/RogueEssence/Data/DataManager.cs>
