# Class:MonsterData

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Class:MonsterData

This page documents the MonsterData class for Lua scripting.

As an instanced class, it be accessed from Lua after assigning the instance to a variable, such as `monsterData`

## Name

`monsterData.Name`

**Type:** `RogueEssence.LocalText`

Monster's name

## Title

`monsterData.Title`

**Type:** `RogueEssence.LocalText`

Monster's species title

## Released

`monsterData.Released`

**Type:** `System.Boolean`

Is it released and allowed to show up in the game?

## Comment

`monsterData.Comment`

**Type:** `System.String`

Comments visible to only developers

## IndexNum

`monsterData.IndexNum`

**Type:** `System.Int32`

Index number of the monster for sorting. Must be unique

## EXPTable

`monsterData.EXPTable`

**Type:** `System.String`

How fast this unit levels up. Uses the Growth Group EXP tables.

## SkillGroup1

`monsterData.SkillGroup1`

**Type:** `System.String`

Skill group for shared skills

## SkillGroup2

`monsterData.SkillGroup2`

**Type:** `System.String`

Skill group 2 for shared skills

## JoinRate

`monsterData.JoinRate`

**Type:** `System.Int32`

Chance to be recruited

## PromoteFrom

`monsterData.PromoteFrom`

**Type:** `System.String`

Monster SPECIES this was promoted from

## Promotions

`monsterData.Promotions`

**Type:** `System.Collections.Generic.List{RogueEssence.Data.PromoteBranch}`

Possible promotions

## Forms

`monsterData.Forms`

**Type:** `System.Collections.Generic.List{RogueEssence.Data.BaseMonsterForm}`

Forms of the monster

## References

<https://github.com/RogueCollab/RogueEssence/blob/master/RogueEssence/Data/MonsterData.cs>
