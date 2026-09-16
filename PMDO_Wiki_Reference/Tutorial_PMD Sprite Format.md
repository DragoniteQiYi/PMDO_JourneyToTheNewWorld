# Tutorial:PMD Sprite Format

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:PMD_Sprite_Format

TODO: format this article based on the doc: <https://docs.google.com/document/d/1EceEEjyeoFwoKXdNj4vpXdoYRWp8CID64e-ZqY954_Q/edit>

PMD Sprite zip files contain several components:

AnimData.xml
Animations, represented by 3 png components:
<Anim Name>-Anim.png
<Anim Name>-Offsets.png
<Anim Name>-Shadow.png

AnimData.xml

This xml contains data of all of the sprite’s animations. Max limit is 44 (0-43). Each anim is enclosed in an <Anim> tag and each animation can contain the following child tags:
Every animation must have a <Name> tag. Every animation must have a different name (No repeats). The names that can be used are listed in this sheet: <https://docs.google.com/spreadsheets/d/16bnauXeTendm1xQSrk6pbobCFFeeHXghpFfyo4jWLYo/edit#gid=1173503073>
Animations can optionally specify an <Index> tag. This is for internal use when imported to SkyTemple. No index can be used twice.
The animation can be a copy of another animation. If so, the <CopyOf> tag is used with the name of the original animation specified within. It cannot be a copy of an animation that is a copy of something else (No chaining). The tags listed below this one cannot be specified if <CopyOf> is specified for an animation.
You must specify how large each frame of animation is for this anim, using <FrameWidth> and <FrameHeight> tags. They are in pixels.
You can optionally specify the <RushFrame> of the animation- the frame where the Pokemon has finished pulling back for an attack and begins lunging forward in attack. Only certain attack animations use this. If left blank it uses the first frame.
You can optionally specify the <HitFrame> of the animation- the frame where the Pokemon has finished lunging forward in attack and has reached the point where it supposedly hit the target. Only certain attack animations use this. If left blank it uses the ReturnFrame.
You can optionally specify the <ReturnFrame> of the animation- the frame where the Pokemon has reached the point where it finished hitting the target, and has begun to pull back to its original position. Only certain attack animations use this. If left blank it uses the last frame.
You must specify the duration of every frame of the animation with the <Durations> tag, and the contents within:
Every frame is listed with <Duration>, specified in frames (1/60th of a second)

Animation PNG Images

Every animation that is not a copy of another animation must have its own set of PNG images:
An Anim.png
An Offsets.png
A Shadow.png

They all use the name of the anim specified in the XML. For example, if the XML specified an animation named “Attack”, there must be 3 pngs in this zip named:
Attack-Anim.png
Attack-Offsets.png
Attack-Shadow.png

All images must be the same size, as they can be overlaid on top of each other. The frame size for each animation is specified in AnimData.xml, and can be any even-numbered dimensions. It is preferred that you use as little white space as possible to make it easier for you as the sprite editor to work with, but extra whitespace will not count towards extra ROM space (it will be chopped off when processing). Frames of an animation are ordered horizontally by sequence, and vertically by direction. You can have 8 directions for an anim, or just one.

Hurt: Sleep:

Anim.png

This png file contains the actual sprites.

Offsets.png

This contains the offsets that label the body parts of the sprite on every frame:
The Green pixel is the center of the body.
The Red pixel is the left hand (the entity’s left).
The Blue pixel is the right hand (the entity’s right).
The Black pixel is the head. This is especially important, used for status effect icons.
If the positions overlap, the colors will be combined. If there is no black pixel the center of the body is used as default.

Shadow.png

This contains offsets that label where the shadow should appear for the sprite on every frame.
The White pixel is the center of the sprite.
The Green component is the area cast by a small shadow.
The Red component is the area cast by a normal shadow.
The Blue component is the area cast by a large shadow.
