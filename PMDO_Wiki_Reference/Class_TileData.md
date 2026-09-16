# Class:TileData

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Class:TileData

This page documents the TileData class for Lua scripting.

As an instanced class, it be accessed from Lua after assigning the instance to a variable, such as `tileData`

## Name

`tileData.Name`

**Type:** `RogueEssence.LocalText`

The name of the data

## Desc

`tileData.Desc`

**Type:** `RogueEssence.LocalText`

The description of the data

## Released

`tileData.Released`

**Type:** `System.Boolean`

Is it released and allowed to show up in the game?

## Comment

`tileData.Comment`

**Type:** `System.String`

Comments visible to only developers

## Anim

`tileData.Anim`

**Type:** `RogueEssence.Content.ObjAnimData`

The object animation used for this tile

## Offset

`tileData.Offset`

**Type:** `RogueElements.Loc`

The offset for which to draw the object animation

## Layer

`tileData.Layer`

**Type:** `RogueEssence.Content.DrawLayer`

The layer to draw the tile on. Only supports Bottom, Back, and Front for now.

## BlockItem

`tileData.BlockItem`

**Type:** `System.Boolean`

Prevents items from landing on it.

## StepType

`tileData.StepType`

**Type:** `RogueEssence.Data.TileData.TriggerType`

Determines how the tile can be interacted with

## MinimapIcon

`tileData.MinimapIcon`

**Type:** `RogueElements.Loc`

Texture for the minimap icon

## MinimapColor

`tileData.MinimapColor`

**Type:** `Microsoft.Xna.Framework.Color`

Color for the minimap icon

## LandedOnTiles

`tileData.LandedOnTiles`

**Type:** `RogueElements.PriorityList{RogueEssence.Dungeon.SingleCharEvent}`

What happens when a character walks on the tile.
Also triggers if forced on or winds up on it in any other way.

## InteractWithTiles

`tileData.InteractWithTiles`

**Type:** `RogueElements.PriorityList{RogueEssence.Dungeon.SingleCharEvent}`

What happens when the character voluntarily triggers the tile.

## References

<https://github.com/RogueCollab/RogueEssence/blob/master/RogueEssence/Data/TileData.cs>
