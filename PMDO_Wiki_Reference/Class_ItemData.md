# Class:ItemData

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Class:ItemData

This page documents the ItemData class for Lua scripting.

As an instanced class, it be accessed from Lua after assigning the instance to a variable, such as `itemData`

## Name

`itemData.Name`

**Type:** `RogueEssence.LocalText`

The name of the item, containing all translations.
Use the name's ToLocal() function to get the name in current language.
For proper battle log formatting, use GetIconName() instead.

## Sprite

`itemData.Sprite`

**Type:** `System.String`

The name of the image file used for this item's dungeon sprite.
The extension is excluded.
The file is loaded from Content/Item relative to the game exe.

## Icon

`itemData.Icon`

**Type:** `System.Int32`

The icon displayed next to the item's name in menus or the message log.

## Desc

`itemData.Desc`

**Type:** `RogueEssence.LocalText`

The description of the item, containing all translations.
Use the name's ToLocal() function to get the name in current language.

## Released

`itemData.Released`

**Type:** `System.Boolean`

Internal flag to show whether a item is completed and allowed to appear in the game.
Items that are not released appear with an asterisk next to their names when viewed in the Dev Mode editors.

## Comment

`itemData.Comment`

**Type:** `System.String`

An internal piece of text only visible using the Dev Mode editors, or by calling this property.
Usually used to take notes on the item if necessary.

## SortCategory

`itemData.SortCategory`

**Type:** `System.Int32`

The numerical order of the item, used when sorting items.
Lower numbers precede higher numbers.
In the event of a tie, the item with the lowest lexicographical internal name goes first.

## Price

`itemData.Price`

**Type:** `System.Int32`

How much the item sells for.
Also used to calculate score at the end of runs.

## Rarity

`itemData.Rarity`

**Type:** `System.Int32`

The rarity rating of the item.

## MaxStack

`itemData.MaxStack`

**Type:** `System.Int32`

The maximum amount a single slot of this item can be stacked.
0 is unstackable.
-1 is infinite use.

## CannotDrop

`itemData.CannotDrop`

**Type:** `System.Boolean`

If set to true, the item cannot be manually dropped, lost, or stolen.
The item can still be put in storage, and menu-based shops usually ignore this flag.

## BagEffect

`itemData.BagEffect`

**Type:** `System.Boolean`

Determines whether the item provides its effects when in the bag or on equip.
This only matters for items with passive effects.

## ItemStates

`itemData.ItemStates`

**Type:** `RogueEssence.Dungeon.StateCollection{RogueEssence.Dungeon.ItemState}`

Special variables that this item contains.
They are potentially checked against in a select number of battle events.

## GroundUseActions

`itemData.GroundUseActions`

**Type:** `System.Collections.Generic.List{RogueEssence.Ground.GroundItemEvent}`

List of ground actions that can be used with that item.

## UseAction

`itemData.UseAction`

**Type:** `RogueEssence.Dungeon.CombatAction`

The hitbox of the attack that comes out when the item is used.

## Explosion

`itemData.Explosion`

**Type:** `RogueEssence.Dungeon.ExplosionData`

The splash effect that is triggered for each target of the UseAction hitbox.

## UseEvent

`itemData.UseEvent`

**Type:** `RogueEssence.Data.BattleData`

The effects of using the item.

## UsageType

`itemData.UsageType`

**Type:** `RogueEssence.Data.ItemData.UseType`

Define whether this is a food, drink, etc for the proper sound/animation on use
"None" and "ammo" will prevent use, but UseEffect can still be triggered by throwing it.
This means that throw effect is the same as use effect.

#### Notes

Some moves care about UseType. For example, [Belch](https://wiki.pmdo.pmdcollab.org/wiki/Belch "Belch (page does not exist)") triggers on Eat use actions.

## ArcThrow

`itemData.ArcThrow`

**Type:** `System.Boolean`

If set to true, this item flies in an arc to strike the target when thrown.
If set to false, this item flies in a straight line when thrown.

## BreakOnThrow

`itemData.BreakOnThrow`

**Type:** `System.Boolean`

Defines whether this item will disappear if thrown, even if it doesnt hit a target.

## ThrowAnim

`itemData.ThrowAnim`

**Type:** `RogueEssence.Content.AnimData`

Defines the custom graphics for the item when it is thrown.
Set to an empty anim to use the item's own sprite.

## References

<https://github.com/RogueCollab/RogueEssence/blob/master/RogueEssence/Data/ItemData.cs>
