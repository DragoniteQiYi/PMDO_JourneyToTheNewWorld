# Class:IntrinsicData

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Class:IntrinsicData

This page documents the IntrinsicData class for Lua scripting.

As an instanced class, it be accessed from Lua after assigning the instance to a variable, such as `intrisicData`

## Name

`intrisicData.Name`

**Type:** `RogueEssence.LocalText`

The name of the intrinsic, containing all translations.
Use the name's ToLocal() function to get the name in current language.
For proper battle log formatting, use GetColoredName() instead.

## Desc

`intrisicData.Desc`

**Type:** `RogueEssence.LocalText`

The description of the intrinsic, containing all translations.
Use the name's ToLocal() function to get the name in current language.

## Released

`intrisicData.Released`

**Type:** `System.Boolean`

Internal flag to show whether a intrinsic is completed and allowed to appear in the game.
Intrinsics that are not released appear with an asterisk next to their names when viewed in the Dev Mode editors.

## Comment

`intrisicData.Comment`

**Type:** `System.String`

An internal piece of text only visible using the Dev Mode editors, or by calling this property.
Usually used to take notes on the intrinsic if necessary.

## IndexNum

`intrisicData.IndexNum`

**Type:** `System.Int32`

Index number of the intrinsic for sorting. Must be unique.

#### Notes

Abilities use the [index number](https://bulbapedia.bulbagarden.net/wiki/Ability#List_of_Abilities) from the main series.

## References

<https://github.com/RogueCollab/RogueEssence/blob/master/RogueEssence/Data/IntrinsicData.cs>
