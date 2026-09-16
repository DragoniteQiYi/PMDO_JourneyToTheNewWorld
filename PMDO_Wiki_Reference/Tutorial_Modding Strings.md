# Tutorial:Modding Strings

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Modding_Strings

Strings in PMDO are stored in files specifically for them, with the `.resx` extension. Although strings may be literally defined in scripting files, they are best to be globally stored for the sake of enabling translations.

## File location

Strings for the entire game are stored in the following two files:

- `strings.resx`: Contains hardcoded text for the base game
- `stringsEx.resx`: Contains text for developer-made content such as battle messages for move effects

Individual ground files have their own strings.resx file.

## Modifying Strings

Strings may be edited using the game's [dev mode](https://wiki.pmdo.pmdcollab.org/wiki/Dev_mode "Dev mode"). Any new string files in a [mod](https://wiki.pmdo.pmdcollab.org/wiki/Mod "Mod") will be added to the strings found originally in the game, for comparability's sake.
