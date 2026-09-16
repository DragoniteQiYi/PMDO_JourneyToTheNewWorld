# Stats

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Stats

*This article is a **stub**. You can help PMDO Wiki by expanding it.*

Pokemon Mystery Dungeon Origins uses all 6 stats from the main series games.

## Basic Information

HP, Attack, Defense, Special Attack, Special Defense all behave as they do in the main series. The damage formula is based on division.

Speed determines hit rate and dodge rate: When attacking a target, the accuracy of the move is multiplied by your speed, then divided by the target's speed to get the final percentage hit chance. Remember that no attack can miss twice in a row.

## Stat Calculation

HP:

```
stat = (baseStat + 130) * level / 100 + 10 + boost
```

Atk/Def/SpA/SpD:

```
stat = (baseStat + 30) * level / 100 + 5 + boost
```

Pokemon base stats are based on main series stats from ORAS.

## Boosting Stats

PMDO uses an Effort Value-like system, which gets calculated into bonus stat points applied directly onto that Pokemon's stat:

```
boost = (maxBaseStat - baseStat) * EV / 256
```

- Vitamins boost EVs by 4. They boost 8 when drunken in the juice shop.
- Gummis boost EVs by up to 7. They depend on the matchup with the pokemon eating.

Every stat can be boosted by up to 256 EV points. However, unlike main series EVs, all stats can be boosted to their maximum. There is no budget limit. Thus, all Pokemon can reach their max stats by gaining 256 EVs in every stat.

## Max Base Stats

A Pokemon's given maximum base stat is determined by the following formula:

```
maxBaseStat = 1536 * baseStat / (BaseHP + BaseAtk + BaseDef + BaseMAtk + BaseMDef + BaseSpeed)
```

This means that a Pokemon with a low Base Stat Total will be on even ground with a Pokemon of high Base Stat Total by the time both max out their stats, because at maximum, both effectively have a base stat total of 1536 (But they will likely be distributed differently). A base stat total of 1536 is equivalent to having 256 in every base stat.

This means that unevolved or statistically poor Pokemon will reach the same potential as fully evolved Pokemon or legendaries, movepools notwithstanding. Additionally, this means that unevolved Pokemon are affected more by gummis and vitamins due to their lower Base Stat Total, though the benefit is only enough to gradually catch up with the higher BST evolution until they both converge at 256.

## Stat Modifiers

Stat modifiers have 6 stages. They can be boosted up to +6, or dropped to -6. The sole exception is Movement Speed, which can be boosted to +3, or dropped to -3.

Stat modifiers that are not Movement Speed affect the Pokemon's stats by multiplying it by a factor:

**Stage multipliers**

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Stage | -6 | -5 | -4 | -3 | -2 | -1 | 0 | +1 | +2 | +3 | +4 | +5 | +6 |
| Accuracy/Evasion | 2/8 | 2/7 | 2/6 | 2/5 | 2/4 | 2/3 | 2/2 | 3/2 | 4/2 | 5/2 | 6/2 | 7/2 | 8/2 |
| Atk/Def/SpA/SpD | 4/10 | 4/9 | 4/8 | 4/7 | 4/6 | 4/5 | 4/4 | 5/4 | 6/4 | 7/4 | 8/4 | 9/4 | 10/4 |
