# Tutorial:Creating Ground Map NPCs

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Creating_Ground_Map_NPCs

This tutorial goes into the specifics of adding NPCs to an existing map, and giving them interactivity.

Start the game in [Dev Mode](Dev%20Mode.md "Dev Mode") and select “Edit Ground” in the Dev Controls.

[![](/wiki/images/f/fc/Scripting_Intro.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Scripting_Intro.png)

## Adding Entity

Start by opening an existing ground map. We will open `Data\Ground\cliff_camp.rsground`

[![](/wiki/images/f/fa/Scripting_Ground.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Scripting_Ground.png)

Switch to the “Entities” tab, and create a new Character object with these settings:

[![](/wiki/images/0/00/Scripting_Char.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Scripting_Char.png)

Don’t forget to switch to “Add New” Mode!

Setting the trigger type to “Action” is what allows the character to be spoken to; the two callbacks listed below are the ones available when choosing that trigger type. They will be referred to later.

[![](/wiki/images/a/a3/Scripting_Char_Display.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Scripting_Char_Display.png)

Char display allows you to change everything about the character’s sprite.

[![](/wiki/images/5/59/Scripting_Nickname.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Scripting_Nickname.png)

You can specify a nickname for the character; if left blank, the species name is used.

Click on the position in the map to place the character.

[![](/wiki/images/8/8e/Scripting_Map.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Scripting_Map.png)

Save the map.

## Setting Strings

Switch to the Strings tab, and add dialogue.

[![](/wiki/images/7/73/Scripting_Strings.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Scripting_Strings.png)

Save the map as you would normally, to save the changes to the strings.

## Scripting

Switch to the “Script” tab and open the script directory for this map:

[![](/wiki/images/1/1e/Scripting_Folder.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Scripting_Folder.png)

Alternatively, you can find the directory manually by going to `Data\Script\ground\cliff_camp`

[![](/wiki/images/d/d6/Scripting_Folder_Opened.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Scripting_Folder_Opened.png)

Open `init.lua` in order to edit the logic behind the ground map.

[![](/wiki/images/6/62/Scripting_Event.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Scripting_Event.png)

There’s plenty of existing code here, you will need to add the following code:

```
function cliff_camp.Meditite_Action(chara, activator)
  DEBUG.EnableDbgCoro() --Enable debugging this coroutine
  GROUND:CharTurnToChar(chara,CH('PLAYER'))--make the chara turn to the player
  UI:SetSpeaker(chara)--set the dialogue box's speaker to the character
  UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Meditite_Line_001']))
  UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Meditite_Line_002']))
end
```

Whenever you speak to an object, the game looks for a method named `<Object name>_Action` and calls it. This is why our function is named `Meditite_Action`.
The first argument, `chara`, is the character being spoken to (Meditite).
The second argument, `activator`, is the player object.

Save the file with your edits, go back to the ground editor and reload the scripts.

[![](/wiki/images/e/e7/Scripting_Reload.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Scripting_Reload.png)

Exit the ground editor, and you will be returned to the title screen.
Fast-travel to the cliff camp, and the Meditite should be added.

[![](/wiki/images/f/fe/Scripting_Test.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Scripting_Test.png)

If you experience issues, check the logs for the most recent errors in your current session. They are found in the `LOGS` folder.

### Literal String Dialogue

Dialogue may also be used with literal strings in the script, like so:

```
  UI:WaitShowDialogue("What do you seek?")
  UI:WaitShowDialogue("May you find what you seek here.")
```

It should be noted that this prevents translations from applying to strings easily. To make it easy to change literal strings to map strings, design the script with a table to hold the literal strings, and use variables from there:

```
  local meditite_lines = {
                          l1 = "What do you seek?",
                          l2 = "May you find what you seek here."
                         }

  UI:WaitShowDialogue(meditite_lines.l1)
  UI:WaitShowDialogue(meditite_lines.l2)
```

Then, when updating to use the map strings, changing it is a relatively easy task:

```
  local meditite_lines = {
                          l1 = STRINGS:Format(STRINGS.MapStrings['Meditite_Line_001'])
                          l2 = STRINGS:Format(STRINGS.MapStrings['Meditite_Line_002'])
                          }

  UI:WaitShowDialogue(meditite_lines.l1)
  UI:WaitShowDialogue(meditite_lines.l2)
```

## Further reading

[Scripting Cheat Sheet](Tutorial_Scripting%20Cheat%20Sheet.md "Scripting Cheat Sheet")
