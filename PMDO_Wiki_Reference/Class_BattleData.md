# Class:BattleData

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Class:BattleData

This page documents the BattleData class for Lua scripting.

As an instanced class, it be accessed from Lua after assigning the instance to a variable, such as `battleData`

## Element

`battleData.Element`

**Type:** `System.String`

The elemental attribute of the attack, item, or trap containing this BattleData.

## Category

`battleData.Category`

**Type:** `RogueEssence.Data.BattleData.SkillCategory`

The attack's damage category.

## HitRate

`battleData.HitRate`

**Type:** `System.Int32`

The percent chance of the attack hitting.
0 = Cannot Hit
-1 = Cannot miss

## SkillStates

`battleData.SkillStates`

**Type:** `RogueEssence.Dungeon.StateCollection{RogueEssence.Dungeon.SkillState}`

Special variables that this skill contains.
They are potentially checked against in a select number of battle events.

## BeforeTryActions

`battleData.BeforeTryActions`

**Type:** `RogueElements.PriorityList{RogueEssence.Dungeon.BattleEvent}`

Occurs before the attacker tries to use the skill.
If the skill is cancelled here, the turn and skill are not used.

## BeforeActions

`battleData.BeforeActions`

**Type:** `RogueElements.PriorityList{RogueEssence.Dungeon.BattleEvent}`

Occurs before the attacker uses the skill.
If the skill is cancelled here, the turn will still be passed.

## OnActions

`battleData.OnActions`

**Type:** `RogueElements.PriorityList{RogueEssence.Dungeon.BattleEvent}`

Occurs right after the attacker uses the skill.
The skill will have been called out, and the turn will be passed.
In a skill with multiple strikes, this event will be called at the beginning of each strike.

## BeforeExplosions

`battleData.BeforeExplosions`

**Type:** `RogueElements.PriorityList{RogueEssence.Dungeon.BattleEvent}`

Occurs after a tile is targeted and before it creates a splash damage hitbox.
Can be used to alter the hitbox or redirect it.

## BeforeHits

`battleData.BeforeHits`

**Type:** `RogueElements.PriorityList{RogueEssence.Dungeon.BattleEvent}`

Occurs before the target is hit.
At this point, the target variable is available for calculations.

## OnHits

`battleData.OnHits`

**Type:** `RogueElements.PriorityList{RogueEssence.Dungeon.BattleEvent}`

Occurs when the target is hit.
Does not occur if the target evaded the attack.

## OnHitTiles

`battleData.OnHitTiles`

**Type:** `RogueElements.PriorityList{RogueEssence.Dungeon.BattleEvent}`

Occurs when the attack hits a tile.
Can be used for terrain deformation.

## AfterActions

`battleData.AfterActions`

**Type:** `RogueElements.PriorityList{RogueEssence.Dungeon.BattleEvent}`

Occurs after all targets are hit by the skill.
In a skill with multiple strikes, this event will be called at the end of each strike.

## ElementEffects

`battleData.ElementEffects`

**Type:** `RogueElements.PriorityList{RogueEssence.Dungeon.ElementEffectEvent}`

Modifies the elemental effect system.

#### Notes

Used by [Freeze-Dry](https://wiki.pmdo.pmdcollab.org/wiki/Freeze-Dry "Freeze-Dry (page does not exist)"), [Scrappy](https://wiki.pmdo.pmdcollab.org/wiki/Scrappy "Scrappy"), and the [Exposed](https://wiki.pmdo.pmdcollab.org/wiki/Exposed "Exposed (page does not exist)") status.

## IntroFX

`battleData.IntroFX`

**Type:** `System.Collections.Generic.List{RogueEssence.Content.BattleFX}`

VFX that play target before they are hit.
Will always play, even if the evasion roll results in a miss.

## HitFX

`battleData.HitFX`

**Type:** `RogueEssence.Content.BattleFX`

VFX that play when the target is hit.
Only plays if the target is actually hit.

## HitCharAction

`battleData.HitCharAction`

**Type:** `RogueEssence.Dungeon.CharAnimData`

Target character animation when it is hit.
Only plays if the target is actually hit.

## References

<https://github.com/RogueCollab/RogueEssence/blob/master/RogueEssence/Data/BattleData.cs>
