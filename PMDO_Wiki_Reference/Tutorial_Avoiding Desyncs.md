# Tutorial:Avoiding Desyncs

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Avoiding_Desyncs

When you watch a replay, the game loads up your adventure from how it originally started, and plays back every move you made. Because the game is recreated down to the random seed in that adventure, the same sequence of moves will play out exactly like how you originally played it. However, sometimes the replay will desync, because some detail of the game is different in the replay than it is when you originally played it. Usually, this is because you upgraded the game. But sometimes, this happens witin a version. This is a major problem, as quicksaves use replays to get you back to where you were. This page outlines the best practices for avoiding and troubleshooting desyncs.

# Best Practices

- In scripted battle events, especially those involving talking to NPCs, it is preferred to cancel the turn with `context.CancelState.Cancel = true` if the NPC had nothing noteworthy to say. However, if talking to that NPC would result in a meaningful state change (such as joining the party, completing a mission, giving an item, etc), you should not cancel the turn. However, you may want to cancel the turn completion so that talking to NPCs doesn't waste your turn. Use `context.TurnCancel.Cancel = true` to do this.
- Do not iterate dictionaries using `pair`. Dictionary tables in lua are NON-DETERMINISTIC, which means they can't be trusted from replay to replay! Instead, sort all keys in the lua table and iterate in key order. The function `COMMON.GetSortedKeys(dict)` can do this for you.
- Avoid using  [non-repeatable random number generators](Tutorial_Random%20Number%20Generators.md "Random Number Generators").

# Troubleshooting

- If you are having trouble narrowing down the issue, print the state of `_DATA:Save.Rand:ToString()` on every turn or close to the point of desync. The RNG's state is usually the first thing to derail when a desync occurs.
- You can turn a replay into a quicksave using the dev mode. This allows you to replay the game from a certain point to retrigger the desync and observe both the live play and the desynced replay to compare.
