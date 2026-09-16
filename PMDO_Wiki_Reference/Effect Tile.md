# Effect Tile

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Effect_Tile

**Effect tiles** are tiles that activate upon certain conditions being met that affect the player and the foe in dungeons. In most cases, tiles replace floor [terrain](Terrain.md "Terrain") during dungeon generation.

## List of effect tiles

| Image | Tile | Range | Effects | Destroyed after trigger |
| --- | --- | --- | --- | --- |
|  | [Chest](https://wiki.pmdo.pmdcollab.org/wiki/Chest "Chest") | Interact only | May be opened with a [key](https://wiki.pmdo.pmdcollab.org/wiki/Key "Key") to spawn a [house](https://wiki.pmdo.pmdcollab.org/wiki/House "House"). | No |
|  | Empty Chest | None | Replaces a full chest after being used. Does nothing but take up space. | No |
|  | Wonder Tile | 1-tile area | Removes all [stat changes](https://wiki.pmdo.pmdcollab.org/wiki/Stat_changes "Stat changes"). | No |
|  | Sealed Block | None | A sealed obstructing block that may be removed under certain circumstances. | No |
|  | Sealed Door | None | A sealed obstructing door that can be opened under certain circumstances. | No |
|  | Guild Gate | Interact | A special gate that can only be opened by guildmasters. | No |
|  | Sign | Interact | Displays a text box when interacted with. | No |
|  | [Mirage Tile](https://wiki.pmdo.pmdcollab.org/wiki/Mirage_Tile "Mirage Tile") | Interact | Spawns a boss battle when interacted and "yes" is selected. | No |
|  | Compass Tile | 1-tile area | Directs the player towards a point of interest. PoI tiles are: emitters, stairs, rescue tiles, chests, boss tiles, and sealed doors | No |
|  | Sea Cradle | 1-tile | *A cold sea current gently swirls about...* Related to a certain sequence in [Castaway Cave](https://wiki.pmdo.pmdcollab.org/wiki/Castaway_Cave "Castaway Cave"). | No |
|  | Luminous Site | 1-tile | A tile that can be stepped on to evolve. | No |
|  | Fairy Ring | 1-tile | *A mysterious energy permeates the area...* Related to a certain secret in [Trickster Woods](https://wiki.pmdo.pmdcollab.org/wiki/Trickster_Woods "Trickster Woods"). | No |
|  | Mystery Site | 1-tile | The target tile for [mysteriosity](https://wiki.pmdo.pmdcollab.org/wiki/Mysteriosity "Mysteriosity"). | Yes |
|  | Rescue Point | 1-tile | The target goal tile when completing a [rescue](https://wiki.pmdo.pmdcollab.org/wiki/Rescue "Rescue"). | No |
|  | Reset Tile | 1-tile | A switch that resets the floor, returning all items, traps, and wild Pokémon to their original positions. | ? |
|  | Switch Tile | 1-tile | A switch that does something when pressed. | No |
|  | Switch Tile (sync) | 1-Tile | A switch tile that requires all other switch tiles of its type to be stood on to activate. | No |
|  | Updraft | 1-Tile | *A mysterious wind current is blowing upwards...* Related to a certain secret in a dungeon. | No |
|  | Wonder Tile | 1-tile area | Removes all [stat changes](https://wiki.pmdo.pmdcollab.org/wiki/Stat_changes "Stat changes"). | No |

### Stairs

| Image | Tile | Effects | Map Colour |
| --- | --- | --- | --- |
|  | Back Down | Goes down to a previous floor. |
|  | Back Up | Goes up to a previous floor. |
|  | Exit Down | Exits the dungeon in the down direction. |
|  | Exit Up | Exits the dungeon in the up direction. |
|  | Go Up | Proceeds to the next floor with stairs that go up. |
|  | Go Down | Proceeds to the next floor with stairs that godown. |
|  | Secret Up | Secret entrance stairs that go up. |
|  | Secret Up | Secret entrance stairs that go down. |

### Traps

| Image | Tile | Range | Effects | Destroyed after trigger |
| --- | --- | --- | --- | --- |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Apple_Trap.png "Frameless") | Apple Trap | User | Changes a held item into an [Apple](https://wiki.pmdo.pmdcollab.org/wiki/Apple "Apple"). | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Chestnut_Trap.png "Frameless") | Chestnut Trap | 1-tile area | Deals 1/6 of the Pokémon's Max HP as damage and causes them to [flinch](https://wiki.pmdo.pmdcollab.org/wiki/Flinch "Flinch"). | No |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Explosion_Trap.png "Frameless") | Explosion Trap | 2-tile area | Deals 1/2 of the Pokémon's Current HP as damage. Destroys dropped items. | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Grimy_Trap.png "Frameless") | Grimy Trap | *This section is a **stub**. You can help PMDO Wiki by expanding it.* | Turns a [food](https://wiki.pmdo.pmdcollab.org/wiki/Food "Food") item in the Pokémon's inventory into [Grimy Food](https://wiki.pmdo.pmdcollab.org/wiki/Grimy_Food "Grimy Food"). Removes the Pokémon's [Ability](https://wiki.pmdo.pmdcollab.org/wiki/Ability "Ability"). | No |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Grudge_Trap.png "Frameless") | Grudge Trap | 2-tile area | Gives all opposing Pokémon the [Grudge](https://wiki.pmdo.pmdcollab.org/wiki/Grudge "Grudge (page does not exist)") status. | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Gust_Trap.png "Frameless") | Gust Trap | 1-tile area | Launches Pokémon up to 8 walkable tiles in a random direction. | No |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Hunger_Trap.png "Frameless") | Hunger Trap | User | Reduces the Pokémon's [belly](https://wiki.pmdo.pmdcollab.org/wiki/Belly "Belly") by 20. | No |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Mud_Trap.png "Frameless") | Mud Trap | 1-tile area | Reduces the Pokémon's highest stat by 2 stages. | No |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Poison_Trap.png "Frameless") | Poison Trap | 1-tile area | Inflicts the Pokémon with [poison](https://wiki.pmdo.pmdcollab.org/wiki/Poison "Poison (page does not exist)"). | No |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:PP-Leech_Trap.png "Frameless") | PP-Leech Trap | User | Removes all PP of the Pokémon's last used move. Fails if the Pokémon hasn't used a move yet. | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Seal_Trap.png "Frameless") | Seal Trap | 1-tile area | Disables Pokémon's last used move. Fails if the Pokémon hasn't used a move yet. | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Self-Destruct_Trap.png "Frameless") | Self-Destruct Trap | 1-tile area | Deals 1/2 of the Pokémon's Current HP as damage. Destroys dropped items. | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Slow_Trap.png "Frameless") | Slow Trap | 1-tile area | Reduces the Pokémon's movement speed by 1 stage. | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Slumber_Trap.png "Frameless") | Slumber Trap | 1-tile area | Inflicts the Pokémon with [sleep](https://wiki.pmdo.pmdcollab.org/wiki/Sleep "Sleep"). | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Spikes_Trap.png "Frameless") | Spikes | User | Does 1/8 of the Pokémon's Max HP as damage. | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Spin_Trap.png "Frameless") | Spin Trap | 1-tile area | Inflicts the Pokémon with [confusion](https://wiki.pmdo.pmdcollab.org/wiki/Confusion "Confusion"). | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Stealth_Rock_Trap.png "Frameless") | Stealth Rock | User | Does 1/8 of the Pokémon's Max HP as rock-type damage. | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Sticky_Trap.png "Frameless") | Sticky Trap | User | Inflicts the Pokemon with [Immobilized](https://wiki.pmdo.pmdcollab.org/wiki/Immobilized "Immobilized"). Makes the highest priced item sticky. | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Summon_Trap.png "Frameless") | Summon Trap | User | Brings up to 4 enemies from 80 tiles away onto the nearest tile relative to the player. | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Toxic_Spikes_Trap.png "Frameless") | Toxic Spikes | User | Inflicts the Pokemon with [badly poisoned](https://wiki.pmdo.pmdcollab.org/wiki/Badly_poisoned "Badly poisoned (page does not exist)"). | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Trigger_Trap.png "Frameless") | Trigger Trap | User | Triggers traps up to 5 tiles away. | Yes |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Trip_Trap.png "Frameless") | Trip Trap | 4-tile area | Makes a Pokémon drop its held item. | No |
| [Frameless](https://wiki.pmdo.pmdcollab.org/wiki/File:Warp_Trap.png "Frameless") | Warp Trap | User | Teleports a Pokemon onto a random walkable tile | No |
