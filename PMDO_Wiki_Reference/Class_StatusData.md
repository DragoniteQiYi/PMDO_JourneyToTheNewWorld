# Class:StatusData

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Class:StatusData

This page documents the StatusData class for Lua scripting.

As an instanced class, it be accessed from Lua after assigning the instance to a variable, such as `statusData`

## Name

`statusData.Name`

**Type:** `RogueEssence.LocalText`

The name of the data

## Desc

`statusData.Desc`

**Type:** `RogueEssence.LocalText`

The description of the data

## Released

`statusData.Released`

**Type:** `System.Boolean`

Is it released and allowed to show up in the game?

## Comment

`statusData.Comment`

**Type:** `System.String`

Comments visible to only developers

## MenuName

`statusData.MenuName`

**Type:** `System.Boolean`

Determines if it shows up in the status menu.

## CarryOver

`statusData.CarryOver`

**Type:** `System.Boolean`

Determines if the status stays when changing floors.

## Emoticon

`statusData.Emoticon`

**Type:** `System.String`

The icon that appears over the character's head when they have the status.

## DropEmoticon

`statusData.DropEmoticon`

**Type:** `System.String`

The icon that appears over the character's head when they have this status with a stack below 0

## FreeEmote

`statusData.FreeEmote`

**Type:** `System.String`

Icon that appears on the character's body when they have the status.

## DrawEffect

`statusData.DrawEffect`

**Type:** `RogueEssence.Dungeon.DrawEffect`

Special visual effects applied to the character with this status.

## Targeted

`statusData.Targeted`

**Type:** `System.Boolean`

Will keep track of the character that inflicted the status.

## StatusStates

`statusData.StatusStates`

**Type:** `RogueEssence.Dungeon.StateCollection{RogueEssence.Dungeon.StatusState}`

Special variables that this status contains.
They are potentially checked against in a select number of battle events.

## OnSkillChanges

`statusData.OnSkillChanges`

**Type:** `RogueElements.PriorityList{RogueEssence.Dungeon.SkillChangeEvent}`

Event for when the character's skills are changed or swapped around.

## TargetPassive

`statusData.TargetPassive`

**Type:** `RogueEssence.Data.PassiveData`

Passive effects applied to the character that inflicted the status.

## References

<https://github.com/RogueCollab/RogueEssence/blob/master/RogueEssence/Data/StatusData.cs>
