# Global Lua Functions

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Global_Lua_Functions

The following are **global Lua functions** — that is, they are accessible from within any Lua script and are not part of another module.

## `CH(id)`

Returns the  `Character` with the provided string `id` in the current map.

## `OBJ(id)`

Returns the  `Object` with the provided string `id` in the current map. Does not work in dungeon maps.

## `MRKR(id)`

Returns the  `Marker` with the provided string `id` in the current map. Does not work in dungeon maps.

## `CHName(name)`

Given the default (typically, English) string `name` of a character on the current ground map, returns that character's name in the language the game is currently set to, if they have a different name in that language. Does not work in dungeon maps.

## `IDX(id, [form, skin, gender])`

Creates a new  [MonsterID](https://wiki.pmdo.pmdcollab.org/wiki/MonsterID_Reference "MonsterID Reference (page does not exist)") with the provided parameters. `form`, `skin`, and `gender` are optional.

## `LTBL(entity)`

Given an entity (such as a  `Character`), returns that entity's  `LuaData` table.

## `SPWN(id)`

Returns the  `NPC spawner` with the provided string `id` in the current map.
