# AI Overview

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/AI_Overview

**AI**, also known as **Tactics** for players, dictates how enemies and allies behave in dungeon situations. This is a list of all AIs currently in the game and their function. They are split into two groups: the ones meant for use by allies, and the ones meant for use by enemies. There is nothing stopping modders from giving ally-like AI, but this tends to make them behave more unfairly.

## Player Tactics

All player tactics have the following special properties:

- Will pick up items.
- Will use items if given to hold.
- Will not willingly walk into traps.
- Will not attack sleeping foes unless they are about to wake up.
- Chooses to attack an enemy over walking towards it.
- Picks the best attack on enemies based on basepower, STAB, and type matchups.
- Knows about type neutralizing abilities.

### Stick Together

Prioritizes staying close to the player. Will attack enemies, but only if close to the player.
If it's separated, it will stick to any ally it finds.

### Go After Foes

Same as Stick Together, but will attack foes even when not close to the player.

### Split Up

Same as Go After Foes, but tries to go the other way from allies when it doesn't see enemies in sight.

### Avoid Trouble

Normally follows the leader, but will prioritize avoiding enemies if it sees them. This tactic will never attack.

### Get Away

Runs away from everyone, friend or foe. This tactic will never attack.

### Wait There

Stays still. If it can use a move or attack, it will still do that.

## Enemy Tactics

Enemy tactics are made deliberately dumber to offer a fair-feeling challenge to players. Unless otherwise stated, they behave like such:

- They attack by choosing a random move out of the ones they have enabled.
- They normally avoid traps, but will become careless to this when seeing opponents.
- They grab items off the floor, but don't know how to use them. Including reviver seeds.
- They will generaly prefer against stacking debuffs or buffs
- Won't self-buff when beyond 3 tiles away.
- Will not attack sleeping foes unless they are about to wake up.
- Will friendly fire allies if it means doing more damage to enemies.

### Normal Wander

Wanders the dungeon, and attacks the team on sight with randomly chosen moves. Sticks to allies of its own team.
It will not move forward when it can hit opponents with an attack.

### Smart Wander

Wanders the dungeon, and attacks the team on sight with the best possible move. Sticks to allies of its own team.
It will not move forward when it can hit opponents with an attack, and in some cases even try to create distance.
Knows how to use items.

### Dumb Wander

Wanders the dungeon, and attacks the team on sight with randomly chosen moves. Sticks to allies of its own team.
It will sometimes move forward even when it can hit opponents with an attack.

### Itemless Dumb Wander

Dumb Wander, but does not pick up items.

### Item Finder

Performs like Normal Wander but can use items. It specifically seeks out items if it sees them and isnt holding an item.

### Slow Wander

Performs like Normal Wander, but skips every other turn by intention. This is often used for neutral NPCs or rescue clients.

### Retreater

Performs like Normal Wander, but tries to run away when health drops below 1/3.

### Patrol

Performs like Normal Wander, but only wanders within the area it originally found itself in.

### Slow Patrol

Performs like Patrol, but skips every other turn by intention. This is often used for neutral NPCs or rescue clients.

### Weird Tree

Only moves when no opponents are looking. Behaves like Normal Wander once it's attacked.

### Thief

Behaves like Normal Wander, until its held item changes. Then it runs away.

### Turret

The enemy equivalent of Wait There, lacking item intelligence and attacking randomly.

### Tit for Tat

Normally stands still. But if attacked, will attack back just for that turn.

### Loot Guard

Behaves like Normal Wander, but does not pick up items.

### Shopkeeper

Stands still by default. If the map has the thief status, it behaves like Go After Foes.

### Shuckle

Behaves like Shopkeeper. Except it will always execute the first move in its move list on the first turn after it spawns. This is so they can set up sandstorm or power trick offscreen.

### Boss

Behaves like Smart Wander, but will never friendly fire its allies.

### Staged Boss

Behaves like Boss, but once its health drops below 1/2 all of its moves become enabled.

### Wait Attack

The enemy equivalent of Wait There, lacking item intelligence and attacking randomly.

### Wait Only

Does absolutely nothing every turn.
