# Class:MapStatusData

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Class:MapStatusData

This page documents the MapStatusData class for Lua scripting.

As an instanced class, it be accessed from Lua after assigning the instance to a variable, such as `mapStatusData`

## Name

`mapStatusData.Name`

**Type:** `RogueEssence.LocalText`

The name of the data

## Desc

`mapStatusData.Desc`

**Type:** `RogueEssence.LocalText`

The description of the data

## Released

`mapStatusData.Released`

**Type:** `System.Boolean`

Is it released and allowed to show up in the game?

## Comment

`mapStatusData.Comment`

**Type:** `System.String`

Comments visible to only developers

## CarryOver

`mapStatusData.CarryOver`

**Type:** `System.Boolean`

Does it carry over between floors?

## Emitter

`mapStatusData.Emitter`

**Type:** `RogueEssence.Content.SwitchOffEmitter`

The VFX to play while the map status is in effect.

## DefaultHidden

`mapStatusData.DefaultHidden`

**Type:** `System.Boolean`

Should this map status start off hidden from the menu?

## StatusStates

`mapStatusData.StatusStates`

**Type:** `RogueEssence.Dungeon.StateCollection{RogueEssence.Dungeon.MapStatusState}`

States of the map status

## OnMapRefresh

`mapStatusData.OnMapRefresh`

**Type:** `RogueElements.PriorityList{RogueEssence.Dungeon.RefreshEvent}`

Triggers when a characer needs to refresh traits

## RepeatMethod

`mapStatusData.RepeatMethod`

**Type:** `RogueEssence.Dungeon.MapStatusGivenEvent`

Triggers when something attempts to add a map status when it already exists

## References

<https://github.com/RogueCollab/RogueEssence/blob/master/RogueEssence/Data/MapStatusData.cs>
