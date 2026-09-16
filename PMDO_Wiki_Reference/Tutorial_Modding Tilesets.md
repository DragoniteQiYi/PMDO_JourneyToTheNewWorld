# Tutorial:Modding Tilesets

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Modding_Tilesets

In PMDO, graphics for maps are stored in tilesheet files. They are the \*.tile files found in the Content/Tile subdirectory. Ground maps can be 8x8, 16x16, 24x24, etc. Dungeons are always 24x24 in tilesize, and thus can only use tilesheets that are 24x24.

There are several ways to import tilesets.

## PNG Import

The easiest way to import a tileset is through the Map or Ground Editor:

[![](/wiki/images/b/ba/ModdingTilesets_MapEditor.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingTilesets_MapEditor.png)

This option will import a PNG and slice it by the tilesize that the current ground is edited as. You can check this value by going to Edit->Re-Tile Map:

[![](/wiki/images/8/81/ModdingTilesets_MapEditorTileSize.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingTilesets_MapEditorTileSize.png)

If you are editing a dungeon map, the tile size is always 24x24 and you cannot change this value.

You can also import a PNG using the Tiles editor:

[![](/wiki/images/e/e9/ModdingTilesets_DevPanelSprite.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingTilesets_DevPanelSprite.png)
[![](/wiki/images/3/33/ModdingTilesets_SpriteList.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingTilesets_SpriteList.png)

In this case, you will be prompted for a tileset size to import it with:

[![](/wiki/images/6/62/ModdingTilesets_SpriteImportSize.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingTilesets_SpriteImportSize.png)

## DTEF Import

If you want to import an autotile, you can also import a folder that conforms to DTEF specification. You can do this from the Autotile editor:

[![](/wiki/images/0/0f/ModdingTilesets_DevPanelData.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingTilesets_DevPanelData.png)
[![](/wiki/images/d/d4/ModdingTilesets_DataList.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingTilesets_DataList.png)

In order for your autotile to be imported correctly, you will need to arrange the tiles in a specific format:

[![](/wiki/images/1/1b/ModdingTilesets_FileStructure.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:ModdingTilesets_FileStructure.png)

Tileset images must conform to a naming convention:

`tileset_[Variant].png`

You can learn more in the [DTEF specification](https://github.com/SkyTemple/skytemple-dtef/blob/main/docs/SkyTemple.rst).

Additionally, PMDO extends the format by using additional pngs that adhere to secondary naming convention:

`tileset_[Variant]_frame[Layer]_[Frame].[Duration].png`

- Layer: the layer of the animation; tile animations may have multiple layers. An example would be the water of Apple Woods: The base water changes color on one layer, while the water sparkle animation is done on a different layer.
- Frame: The frame number of the animation.
- Duration: The duration of the animation in frames (1/60th of a second)

You can find examples of this in the [RawAsset](https://github.com/PMDCollab/RawAsset/tree/master/TileDtef) repository.

### Simple Import

With a tileset that has no animation frames or layers, setting up the `tileset.dtef.xml` file is rather simple.

First, create a folder, naming it what you want the tileset to be called when it is imported into PMDO. Put the image of your tileset in it. Ensure it adheres to the [standard tile layout](https://github.com/SkyTemple/skytemple-dtef/blob/main/docs/template.png) that PMD uses, and then rename it to `tileset_0.png`.

Then, create a new file and rename it to `tileset.dtef.xml`, ensuring that you set the extension type to `.xml`.

Finally, paste the following text into the `tileset.dtef.xml` file:

```
<?xml version="1.0" ?>
<DungeonTileset dimensions="24">
</DungeonTileset>
```

Make sure you save it.

Then, in the dev controls, browse to the **Data** tab, and click on **AutoTiles**. Click on **Edit**, selecting the **Import DTEF** option.

Browse through your files and select the folder you created earlier.

Once you select the file and continue, your tileset should be imported as a set of autotiles!
