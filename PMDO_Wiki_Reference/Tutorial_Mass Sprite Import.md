# Tutorial:Mass Sprite Import

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Mass_Sprite_Import

PMDO's sprites and portraits are found in the `sprite/` and `portrait/` subdirectories of the <https://github.com/PMDCollab/RawAsset> repository.

PMDO gets its sprites and portraits from two repositories:

1. <https://github.com/PMDCollab/SpriteCollab> , which is the repo of the PMD Sprite Repository. This contains all canon sprites and portraits from PMD2 plus custom ones by fans.
2. <https://github.com/audinowho/CustomSpriteCollab> , which is a custom repo of sprites and portraits meant to serve as an override to the sprites in the above repository. It consists of exceptional cases or textures that weren't accepted in the repo but still preferred for PMDO.

Every so often, the RawAsset repo is updated with textures from these two repos in a mass import action.

This page outlines the workflow used to import all of these textures into PMDO.

## Filesystem Setup

These are all of the relevant folders and files needed to do a mass update of sprites and portraits.

```
./PMDODump
./PMDODump/RawAsset
./PMDODump/RawAsset/added_nodes.txt
./PMDODump/RawAsset/transfer.json
./PMDODump/RawAsset/custom_transfer.json
./PMDODump/RawAsset/portrait_diff.csv
./PMDODump/RawAsset/sprite_diff.csv
./PMDODump/Scripts
./PMDODump/Scripts/sprite_sync.py
./SpriteBot/SpriteCollab
./SpriteBot/SpriteCollab/portrait
./SpriteBot/SpriteCollab/sprite
./SpriteBot/Custom
./SpriteBot/Custom/portrait
./SpriteBot/Custom/sprite
```

You will need to set up your directory structure such that it looks like this.

This will involve cloning 4 repositories from github.

First, you will need to find a suitable folder to begin in, and clone <https://github.com/audinowho/PMDODump> into it.

```
git clone https://github.com/audinowho/PMDODump.git
```

Then, update its submodule <https://github.com/PMDCollab/RawAsset> within PMDODump:

```
git submodule update --init --remote -- RawAsset
```

This will result in the following file structure:

```
./PMDODump
./PMDODump/RawAsset
```

Then, you must create a `SpriteBot/` folder on the same level as the PMDODump folder.

Then, clone both <https://github.com/PMDCollab/SpriteCollab> and <https://github.com/audinowho/CustomSpriteCollab> to this location.

```
git clone https://github.com/PMDCollab/SpriteCollab.git
git clone https://github.com/audinowho/CustomSpriteCollab.git
```

This will result in the following file structure:

```
./PMDODump
./PMDODump/RawAsset
./SpriteBot/SpriteCollab
./SpriteBot/Custom
```

You've now set up all the needed repositories.

## Importing to RawAsset

Locate the file `./PMDODump/Scripts/sprite_sync.py` and run the file using python. You may need to install the requirements from `./PMDODump/Scripts/requirements.txt`

You will arrive at this message:

```
Updating Transfer Map
Transfer json updated.  Review the added_nodes.txt and make your changes before proceeding.
```

Open `./PMDODump/RawAsset/added_nodes.txt`. This is a generated file showing what new nodes have been added to the pokemon list compared to the current repository. This will include all manner of new species/forms due to a new game coming out, or new alternate portraits created by fans.

[![](/wiki/images/e/e0/Maintenance_Added_Nodes.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Maintenance_Added_Nodes.png)

The script automatically sets Alternates and AltColors to be ignored, as seen with the asterisk preceding their names. However, some forms that we don't want in PMDO might still slip through the cracks. PMDO sticks to only canon Pokemon that are not barred from inter-generational transfer. The "baseline pokedex" so to speak. We see here that Pikachu has a number of hat forms that must be manually excluded from transfer.

To do this, open up `./PMDODump/RawAsset/transfer.json` which contains the node structure for transferring portraits and sprites.

[![](/wiki/images/5/52/Maintenance_Transfer_Json.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Maintenance_Transfer_Json.png)

When `portrait_dest` is set to -1, it means to import the portrait from the source to the same slot as in the destination. If it's set to 0 or above, it gets imported to that specific numbered slot. If it's set to -2, it is not imported at all. The same policy goes for sprites.

[![](/wiki/images/f/f0/Maintenance_Transfer_Json_Ignored.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Maintenance_Transfer_Json_Ignored.png)

In this case, we have set all of the pikachu forms' `portrait_dest` and `sprite_dest` to -2, preventing them from being imported.

This node system also applies to `./PMDODump/RawAsset/custom_transfer.json`. However, given that repo is specific to PMDO there is no need to review it for unexpected changes.

The process of reviewing the nodes needs to be done every time an import happens to ensure a consistent PMDO sprite repo.

Once this is completed, save the transfer file and press enter to continue the python script. It will begin the hours-long process of copying the desired files over and examining the contents for changes.

## Converting from RawAsset

Once the import is complete, you can confirm there are changed files in your repository by viewing RawAsset in git.

```
git status
```

You will also see that `./PMDODump/RawAsset/portrait_diff.csv` `./PMDODump/RawAsset/sprite_diff.csv` have been changed. These lists offer a comprehensive breakdown of which files changed and where.

Now, you must run PMDO with the [conversion flags](https://wiki.pmdo.pmdcollab.org/wiki/Mass_Importing_Assets "Mass Importing Assets") turned on to convert the sprites to PMDO's format. In windows, it would be like this:

```
PMDO.exe -raw ../../RawAsset/ -convert chara portrait
```

Replace the `../../RawAsset/` argument with the path of RawAsset relative to your own installation. This will import character and portrait textures to the `Content/Chara` and `Content/Portrait` folders in your PMDO installation.

Alternatively, if you are running PMDO from source, you can do this conversion just by adding `-convert chara portrait` to your debug arguments.

Wait for the conversion to finish. It takes hours.

Run the game in debug mode and change sprites to confirm everything imported okay. Use the `./PMDODump/RawAsset/portrait_diff.csv` `./PMDODump/RawAsset/sprite_diff.csv` as a guide to see which sprites/portraits deserve more attention in inspection.

## Contributing

Sprite and portrait updates are an occasional occurrence because of how long the conversion steps take. If you want to contribute an update to PMDO's sprite repo yourself, you will need to provide the converted files in `Content/Chara` and `Content/Portrait`, as well as the changes in `./PMDODump/RawAsset`.

This can be done either by sending a zip, or making a  [pull request](https://wiki.pmdo.pmdcollab.org/wiki/Contributing_Code "Contributing Code").
