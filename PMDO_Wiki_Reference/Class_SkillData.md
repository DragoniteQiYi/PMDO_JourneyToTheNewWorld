# Class:SkillData

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Class:SkillData

This page documents the SkillData class for Lua scripting.

As an instanced class, it be accessed from Lua after assigning the instance to a variable, such as `skillData`

## Name

`skillData.Name`

**Type:** `RogueEssence.LocalText`

The name of the skill, containing all translations.
Use the name's ToLocal() function to get the name in current language.
For proper battle log formatting, use GetColoredName() or GetIconName() instead.

## Desc

`skillData.Desc`

**Type:** `RogueEssence.LocalText`

The description of the skill, containing all translations.
Use the name's ToLocal() function to get the name in current language.

## Released

`skillData.Released`

**Type:** `System.Boolean`

Internal flag to show whether a skill is completed and allowed to appear in the game.
Skills that are not released appear with an asterisk next to their names when viewed in the Dev Mode editors.

## Comment

`skillData.Comment`

**Type:** `System.String`

An internal piece of text only visible using the Dev Mode editors, or by calling this property.
Usually used to take notes on the skill if necessary.

## IndexNum

`skillData.IndexNum`

**Type:** `System.Int32`

Index number of the skill for sorting. Must be unique.

#### Notes

This correlates to the [internal index](https://bulbapedia.bulbagarden.net/wiki/List_of_moves) of moves in the main series games.

## BaseCharges

`skillData.BaseCharges`

**Type:** `System.Int32`

The default number of times the skill can be used.

#### Notes

The base PP of a move.

## Strikes

`skillData.Strikes`

**Type:** `System.Int32`

How many times the skill attacks.
Set to greater than 1 for multi-strike attacks.

## HitboxAction

`skillData.HitboxAction`

**Type:** `RogueEssence.Dungeon.CombatAction`

Data on the hitbox of the attack. Controls range and targeting.
Range - Where it hits, how far away, etc.
Targeting - Whether it hits allies, foes, self, or any combination thereof.

## Explosion

`skillData.Explosion`

**Type:** `RogueEssence.Dungeon.ExplosionData`

Optional data to specify a splash effect on the tiles hit.
Contains its own targeting data, separate from HitboxAction.
This allows for skills that explode on allies, but only hit foes, for example.

## Data

`skillData.Data`

**Type:** `RogueEssence.Data.BattleData`

Events that occur with this skill.
Before it's used, when it hits, after it's used, etc.
Most combat logic relating to the skill belongs here.

## References

<https://github.com/RogueCollab/RogueEssence/blob/master/RogueEssence/Data/SkillData.cs>
