# Class:BattleContext

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Class:BattleContext

This page documents the BattleContext class for Lua scripting.

As an instanced class, it be accessed from Lua after assigning the instance to a variable, such as `battleContext`

## StrikeStartTile

`battleContext.StrikeStartTile`

**Type:** `RogueElements.Loc`

the tile of the user before it started a strike (used for tipper effects)
wrapped; it can't go out of bounds anyway

## StrikeEndTile

`battleContext.StrikeEndTile`

**Type:** `RogueElements.Loc`

the tile of the user JUST AFTER it started a strike (used for updating position)
wrapped; it can't go out of bounds anyway

## StartDir

`battleContext.StartDir`

**Type:** `RogueElements.Dir8`

the direcion of the user before it started a strike (used for multistrike confusion)
unwrapped

## ExplosionTile

`battleContext.ExplosionTile`

**Type:** `RogueElements.Loc`

the origin tile for the explosion
unwrapped

## TargetTile

`battleContext.TargetTile`

**Type:** `RogueElements.Loc`

the location of the tile being targeted

unwrapped

## StrikeLandTiles

`battleContext.StrikeLandTiles`

**Type:** `System.Collections.Generic.List{RogueElements.Loc}`

all tiles in which a strike's hitbox ended (used for item landing)
unwrapped

## ActionType

`battleContext.ActionType`

**Type:** `RogueEssence.Dungeon.BattleActionType`

The ActionType: Skill, Item, Throw or Trap

## UsageSlot

`battleContext.UsageSlot`

**Type:** `System.Int32`

For skills, the skill slot
For items, the item slot

## StrikesMade

`battleContext.StrikesMade`

**Type:** `System.Int32`

Strikes that have currently been made in the BattleContext.

## Strikes

`battleContext.Strikes`

**Type:** `System.Int32`

The total strikes that should be made in the BattleContext.

## HitboxAction

`battleContext.HitboxAction`

**Type:** `RogueEssence.Dungeon.CombatAction`

Determines the range and type of hitbox.

## Explosion

`battleContext.Explosion`

**Type:** `RogueEssence.Dungeon.ExplosionData`

Determiens the size of splash effect.

## Data

`battleContext.Data`

**Type:** `RogueEssence.Data.BattleData`

The effect of the skill, item, trap, etc. on the target.

## Item

`battleContext.Item`

**Type:** `RogueEssence.Dungeon.InvItem`

The item that is used, and most likely dropped

## SkillUsedUp

`battleContext.SkillUsedUp`

**Type:** `RogueEssence.Dungeon.SkillStatus`

The skill whose last charge was used up

## TurnCancel

`battleContext.TurnCancel`

**Type:** `RogueEssence.Dungeon.AbortStatus`

Determines if this action should trigger end-of-turn.

## Hit

`battleContext.Hit`

**Type:** `System.Boolean`

Denotes whether the action hit its target.

## RangeMod

`battleContext.RangeMod`

**Type:** `System.Int32`

A number of be added to the Range argument for the hitbox, when it comes out.

## GlobalContextStates

`battleContext.GlobalContextStates`

**Type:** `RogueEssence.Dungeon.StateCollection{RogueEssence.Dungeon.ContextState}`

Context states that remain on the main battlecontext even after iterating over different targets.
Ordinarily, context states are left behind when switching to a new target (in multi-target contexts)

## Target

`battleContext.Target`

**Type:** `RogueEssence.Dungeon.Character`

The character that the action is targeted at

## ContextStates

`battleContext.ContextStates`

**Type:** `RogueEssence.Dungeon.StateCollection{RogueEssence.Dungeon.ContextState}`

Contains contextual info to be passed along the GameContext, used by GameEvents

## User

`battleContext.User`

**Type:** `RogueEssence.Dungeon.Character`

The character that is performing the action

## CancelState

`battleContext.CancelState`

**Type:** `RogueEssence.Dungeon.AbortStatus`

Whether the action should be canceled or not.

## References

<https://github.com/RogueCollab/RogueEssence/blob/master/RogueEssence/Dungeon/GameEffects/BattleContext.cs>

<https://github.com/RogueCollab/RogueEssence/blob/master/RogueEssence/Dungeon/GameEffects/GameContext.cs>
