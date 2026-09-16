# Recruitment

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Recruitment

**Recruitment** is the process of convincing enemy Pokémon to join the player's team.

The data for all recruitment data can be generated into a HTML table by running PMDO with the `-guide` argument. On Windows, it is run like `PMDO.exe -guide`.

## Mechanics

Unlike the original Pokémon Mystery Dungeon games, enemy Pokémon are not recruited by defeating them. Instead, you can recruit enemy Pokémon to join the team by [throwing](https://wiki.pmdo.pmdcollab.org/wiki/Throwing "Throwing (page does not exist)") an [apricorn](https://wiki.pmdo.pmdcollab.org/wiki/Apricorn "Apricorn") at them. This is similar to the use of Poké Balls in main series Pokémon games.

Recruited Pokémon do not give [experience points](https://wiki.pmdo.pmdcollab.org/wiki/Experience_points "Experience points (page does not exist)"). Recruitment also will automatically fail if the target is 5 or more levels higher than the Apricorn user.

### Failure Message

The message given upon failing to recruit a Pokémon explains why that Pokémon was not recruited.

| Message | Reason |
| --- | --- |
| [Pokémon] seems hesitant to join the team... | The Pokémon has a chance of being recruited, but the player didn't succeed the attempt. |
| But it wasn't enough for [Pokémon]! | The player currently has no chance of recruiting the Pokémon, but would be able to gain a chance by boosting their recruitment rate. |
| This Pokémon cannot be recruited! | The Pokémon cannot be recruited under any circumstances because it is flagged as unrecruitable. |

## Formula

The formula for recruitment is as follows:

(b+a)\*(m\*2−h)/m

Where:

- `b` = The target Pokémon's base recruit rate.
- `a` = The boost from the Apricorn used and the Recruit Boost status effect (see below).
- `m` = The target Pokémon's maximum HP.
- `h` = The target Pokémon's current HP.

In effect, this means that using better Apricorns and depleting the target Pokémon's HP will result in a better recruit chance. Unlike main series Pokémon, [status conditions](https://wiki.pmdo.pmdcollab.org/wiki/Status_conditions "Status conditions") do **not** increase the recruit chance.

## Relevant Items

### Apricorns

Main article: [Apricorn](https://wiki.pmdo.pmdcollab.org/wiki/Apricorn "Apricorn")

### Amber Tear

Main article: [Amber Tear](https://wiki.pmdo.pmdcollab.org/wiki/Amber_Tear "Amber Tear")
