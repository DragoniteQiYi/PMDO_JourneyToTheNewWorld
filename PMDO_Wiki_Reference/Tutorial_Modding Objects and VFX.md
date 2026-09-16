# Tutorial:Modding Objects and VFX

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Modding_Objects_and_VFX

Many graphics in this game are stored as directional animation files. In the Content folder, they will have the \*.dir extension.

This file format is used for:

- VFX
- Backgrounds
- Objects
- Items
- Emotes

When importing, the input file must have a specific naming convention:
`[Anim Name].[Direction Type].png`

For example, `Brave_Bird.Dir8.png`:

[![](/wiki/images/e/ef/AttackVFX_BraveBird.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AttackVFX_BraveBird.png)

## Basic Types

Listed below are the basic Direction Types:

| Type | Description | Example |
| --- | --- | --- |
| Dir8 | All 8 directions are unique sprites. | Bite.Dir8.png |
| Dir5 | Contains 5 directions for up, down, and left facing sprites. Flips for the other side. | Pin\_Missile.Dir5.png |
| Dir2 | Contains 2 directions: down and down-left. Rotates in 90-degree increments for other directions. | Sky\_Attack.Dir2.png |
| Dir1 | Contains 1 direction: down. Rotates by 45-degree increments for other directions. | Pay\_Day.Dir1.png |
| Flip | Contains 1 direction meant to represent up, down, and left facing sprites. Flips for the other side. | Withdraw.Flip.png |
| None | Contains 1 direction to represent all-facing sprites. | Blast\_Burn.None.png |

In all cases above, the different directions will always be stacked on top of each other.
Additionally, the dimensions of each frame are squares. Width is always equal to height.

## Dimension-Specifying Types

You can also provide a number for the direction type. This will specify the number of frames in the animation, and allow for non-square animation frames.

For example, `Leaf_Storm.1.png`:

[![](/wiki/images/e/ee/AttackVFX_LeafStorm.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AttackVFX_LeafStorm.png)

The resulting animation will always use the same sprite for every direction, like the None animation type.

You can also provide two numbers for direction type. This will specify a number of frames equal to width x height in the animation.

## Loading a Folder

Lastly, it is possible to load in a folder. This folder must have an XML named DirData.xml specifying the direction type of the animation, and all other files must be numeric PNGs containing one frame of the animation each.

For example, the Pin Missile image above would look like this in folder form:

[![](/wiki/images/2/2d/AttackVFX_Folder.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:AttackVFX_Folder.png)

DirData would have these contents:

```
<?xml version="1.0" encoding="utf-8"?>
<DirData>
  <DirType>Dir5</DirType>
</DirData>
```

This type of approach would be handy for large animations with many frames such as the Dream background. The Dream backgrounds in particular are so long that they exceed maximum texture size for some computers.

## Reference

Many examples can be found in the [RawAsset](https://github.com/PMDCollab/RawAsset/tree/master) repository, specifically in the folders [BG](https://github.com/PMDCollab/RawAsset/tree/master/BG), [Icon](https://github.com/PMDCollab/RawAsset/tree/master/Icon), [Item](https://github.com/PMDCollab/RawAsset/tree/master/Item), [Object](https://github.com/PMDCollab/RawAsset/tree/master/Object), [Particle](https://github.com/PMDCollab/RawAsset/tree/master/Particle).
