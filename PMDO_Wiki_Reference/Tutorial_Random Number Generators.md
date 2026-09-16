# Tutorial:Random Number Generators

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Random_Number_Generators

When lua scripting, there are several random number generators that can be used for PMDO:

- `math.random`: This is lua's own random number generator. It can be used for non-repeatable random numbers such as updating the shop, or randomizing dialogue.
- `GAME.Rand`: This is also known as `RogueElements.MathUtils.Rand` and is RogueElements's built-in generator. It's usually used for particle effects, but can also be used for other non-repeatable random numbers.
- `_DATA.Save.Rand`: This is the random number generator tied to the player's save file. It's used for repeatable random numbers such as in-dungeon processes or dungeon generation itself.
- `Map.Rand`: This is the random number tied to the map. Used for map generation.

If dealing with in-dungeon processes such as map generation, spawning or combat rolls, ONLY `_DATA.Save.Rand` and `Map.Rand` can be used. The latter is preferred when doing map generation, since the map itself is passed into the script. The former is preferred for anything else you want to capture in a replay to ensure it rolls the same number each replay. Otherwise, you will get a  [Desync](Tutorial_Avoiding%20Desyncs.md "Avoiding Desyncs")!
