# Tutorial:Basic quest setup

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Basic_quest_setup

Most quest mods want to initialize and set up certain conditions on startup. This page contains a tutorial on how to set up the script with these basic initialization scripts. This is for quests with fixed party members that should not be able to be shifted or removed from the party.

## Initialization room

Because the "actual" starting room may change depending on the development of the quest, it is generally easiest to create a ground map for the sole purpose of initializing the player's party. This also stashes the code related to initialization in its own script file.

To set this room up:

1. Go to the "Data" tab in the Dev menu.
2. Click on "Edit Ground".
3. Click on "File" and press "Save" to save the ground map.
   - Name this room something like "Intro setup" or "Party init".
4. To access this room properly, it needs to be added to a Zone. Exit out of the Ground Map editor and return to "Data", then click "Zones".
5. Click on add at the bottom to create the zone.
   - It's generally good practice to have a dedicated debug "technical" zone in your mod, for any rooms you may want for testing purposes. Names like "debug" or "mystery\_zone" are good choices.
6. The zone you just created will appear at the bottom. Double click on it to open the zone.
7. Go to the "Ground Maps" area and press "Add".
8. Find the ground map you had previously created for initializing, then press "Ok" to add it to the zone.
   - You can type the name of the ground map while you've opened the selector to find it easier.

## Configuring start params

The room has been created and is now accessible. We want the player to spawn into this room upon starting a save file. To change this, we must edit the Start Parameters.

1. Go to the "Constants" tab.
2. Click on "Start Parameters".
3. Find the selected "map" and click edit.
4. Change the "ID" to the zone you had previously created.
5. PMDO starts counting map IDs at 0, so change Map to 0 to start at the "first" ground map in the zone.

If we want to make a custom intro sequence or pre-determine the player's Pokémon, we need to clear the pre-defined list of starters so the player is not prompted to select one.

1. Go to the "Start Params" window.
2. Under the "chars" list, click on an entry. Press "Delete".
3. Delete all entries until there's just a single entry left. The game will now no longer prompt the player to choose a starter and will automatically assign them the starter you left.

- Note that while we can use this chars list to define the player's starter, this tutorial won't use it and will instead use scripting to define the Pokémon.
  - There is nothing wrong with defining the player through start params! This tutorial instructs you to use scripting to help you understand what game is doing, how to define a team member, and grant you more control over the Pokémon. In most cases, however, using the start params specifically for defining the player's starter is ok.

If you do want to have a simple starter selection for the player, where they just pick a starter from a list without any other introduction, then the Chars list can be used. Using it is rather simple, as you simply add the Pokémon you want the players to be able to choose to the list.

### Testing

To make sure our changes are implemented properly, we should try to create a save file. Follow and observe the expected behaviour in these steps:

1. Click on the game's tab.
2. Create a new file. You shouldn't see a starter menu pop up if you left all but one starter in the list.
3. The game should load without throwing any errors inside of a blank room. Your player should be loaded as the Pokémon you kept in the starter list.
4. To verify that this is the ground map you created earlier, navigate to the "Data" tab and click "Edit Ground".
5. Read the name at the top of the tab. This should be the name of the ground map you previously created.

If this works as expected, you've successfully created and set up your initialization room as the player's starting location.

## Scripting

With the room and start parameters set up, we are now ready to edit the initialization script.

Let's find and open the script file for the ground map:

1. Open "Edit Ground" again, loading the initialization map you created.
2. Switch to the "Script" tab.
3. Click "Open Script Folder". This should open the folder on your computer that contains the scripts.
4. There should be a file called "Init" present inside the folder. Open it in a text editor of your choice.

- You should also take note of the button "Reload scripts". In order to apply any changes you make to the script to the game, you need to reload the game's script. Make note of this for the future, and always recall that script changes aren't automatic without reloading the script either through this button or the script tab in the dev menu.

**Sanity check:** Make sure `return [zone]` is always the last line in the file! The script will not properly load without it. When it is mentioned to put something "at the bottom of the file", assume that is meant to put it *above* `return [zone]`.

### Setting everything up

Let's first set up the structure of the code. Consider what tasks need to be accomplished. In this tutorial's case, we need to:

1. Set up the player's party to have the right Pokémon, including the right leader and other party members.
2. Include some introduction text boxes for the player.
3. Send the player to the "true" map they're supposed to start in.

All three of these tasks can be broken up into functions. Let's add them to the bottom of the file:

```
function intro.SetupParty()
  -- for setting up the player's party
end

function intro.PlayIntro()
  -- for playing the intro text
end

function intro.ExitIntro()
  -- for completing the intro and sending the player to the first map
end
```

We want to set these functions up to be called by the game when the player enters the room. Find the line `function intro.Enter(map)`. Comment out the base `GAME:FadeIn(20)` call and edit the function to call our next three functions in order:

```
function init.Enter(map)
  --GAME:FadeIn(20)
  intro.SetupParty()
  intro.PlayIntro()
  intro.ExitIntro()
end
```

Open the GroundMap again and make sure no errors are thrown by the game upon loading the player into it.

- This can easily be done in the "Travel" tab. Select the "Zone" as the one you previously created, and the ground map should be the one in the "Ground" tab. Select "Enter Ground" to enter the map.
  - You don't need to load a save file for this, and this should be the general way you test loading the ground map. Make sure to reload scripts if the script file was modified while the game is open.

### Party setup

Let's define the party the player will have upon starting the game.

#### Clear the party

The game tends to define default party members in the party, and may do so in the assembly. We should start by removing them, so add this code:

```
    -- Clear any default members
    local party_count = _DATA.Save.ActiveTeam.Players.Count
    for ii = 1, party_count, 1 do
        _DATA.Save.ActiveTeam.Players:RemoveAt(i-1)
    end

    -- Clearup the assembly
    local assembly_count = GAME:GetPlayerAssemblyCount()
    for i = 1, assembly_count, 1 do
        _DATA.Save.ActiveTeam.Assembly.RemoveAt(i - 1)
    end
```

Now the party is empty and has no Pokémon defined as part of it. This is a blank slate we can now define what we want in it.

##### Alternative code

If you've defined the starter in the starting params on purpose, we do not want to remove them from the player's party. Simply change the first loop to this:

```
    for ii = 1, party_count, 2 do
        _DATA.Save.ActiveTeam.Players:RemoveAt(i-1)
    end
```

This excludes removing the leader, which is exactly what we want since they were already defined in starting parameters.

#### Preparing for party members

All of our party members are generally going to be created using the same code. To make things easier, we should define a function that we can call with parameters to do it.

To make a party member, we need to do the following:

1. Define a monster ID that corresponds to the party member.
   - The monster ID defines all "base" data about the Pokémon, including their species, gender, and form.
2. Create the party member from this ID and then add it to the active team.
   - This defines the level and ability of the Pokémon, and then makes them a team member.
3. Define some special variables to them.
   - This will prevent them from being removed from the party or having their position shifted.

Let's make this function to accomplish all of that:

```
function intro.MakePartyMember(pkm, gender, name, ability, level, formNum, slot)
    --create the mon ID
    local monID = RogueEssence.Dungeon.MonsterID(pkm, formNum, "normal", gender)
   -- create and add that mon to the team
    _DATA.Save.ActiveTeam.Players:Add(_DATA.Save.ActiveTeam:CreatePlayer(_DATA.Save.Rand, monID, level, ability, 0))
   -- grab the mon that was just made
   local player = GAME:GetPlayerPartyMember(slot)

  -- heal them
   _DATA.Save.ActiveTeam.Players[slot]:FullRestore()

  -- assign a nickname if defined
  if(name) then GAME:SetCharacterNickname(player, name) end

  -- give variables
  _DATA.Save.ActiveTeam.Players[slot].IsFounder = true
  _DATA.Save.ActiveTeam.Players[slot].IsPartner = true

  -- profile update
  _DATA.Save:UpdateTeamProfile(true)

end
```

Now whenever we want to create a party member, we can call this function while inserting the data for the Pokémon we want to make. We just additionally need to know which team "slot" the member is going in. This number starts counting at 0, so make sure to offset your slot number accordingly.

#### Adding members

##### The leader

*Skip this step if you defined an intended starter through starting params.*

We'll start by adding our party leader in the first slot, 0. Let's use a level 5 base form female Meowth with the nickname Mips and ability Pickup as an example.

In the SetupParty function, we call the function we had made previously with the corresponding arguments:

```
intro.MakePartyMember("meowth", Gender.Female, "Mips", "pickup", 5, 0, 0)
```

Test your code by uncommenting `GAME:FadeIn(20)` to gain control over the player again. If done right, you should be able to open up your party menu, with the summary of the mon you had created.

- **Sanity check:** Make sure to comment `GAME:FadeIn(20)` out again for proper testing. We commented it in just to gain access to the menu and player's party, and you can assume any party inspection requires this as an initial step.
- Your visible leader shouldn't be updated to the Pokémon you created. This is normal behavior, as things like that requires you to call the function.
  - We don't actually need to use this function because of the fact the visible leader updates when changing rooms.

##### Other members

Any new members we add can be done in the same way the leader was added. We just need to keep in mind what slot they'll be added to - the next empty slot in the party.

Let's add two more party members, keeping in mind what slots we want them in:

- **Slot 1:** Level 50 male Scizor with the ability Technician.
- **Slot 2:** Level 15 female paldean Wooper with the ability Unaware.

To add them both, add this code to the function:

```
intro.MakePartyMember("scizor", Gender.Male, "Scizor", "technician", 50, 0, 1)
intro.MakePartyMember("wooper", Gender.Female, nil, "unaware", 15, 1, 2)
```

#### Final code

Now with the function completed, with these instructions it should look like this:

```
function intro.SetupParty()
    -- Clear any default members
    local party_count = _DATA.Save.ActiveTeam.Players.Count
    for ii = 1, party_count, 1 do
        _DATA.Save.ActiveTeam.Players:RemoveAt(i-1)
    end

    -- Clearup the assembly
    local assembly_count = GAME:GetPlayerAssemblyCount()
    for i = 1, assembly_count, 1 do
        _DATA.Save.ActiveTeam.Assembly.RemoveAt(i - 1)
    end

    intro.MakePartyMember("meowth", Gender.Female, "Mips", "pickup", 5, 0, 0)
    intro.MakePartyMember("scizor", Gender.Male, "Scizor", "technician", 50, 0, 1)
    intro.MakePartyMember("wooper", Gender.Female, nil, "unaware", 15, 1, 2)
end
```

Test that the function works and that your party contains the expected team members with no errors thrown.

### Introduction

It is recommend to use another ground map for the player's intro if it is more complicated, with that map as the destination map. However, for a simple intro that just displays some text boxes before transitioning into a playable starting ground map, this initializing room works.

Let's have these textboxes appear in this order with corresponding speakers:

1. No speaker.
2. Slot 0 as the speaker.
3. Slot 1 as the speaker.
4. Slot 2 as the speaker.
5. No speaker.

We can use the UI and speaker functions for this dialogue, and add them to the function while referencing the party members in a given slot:

NOTE: Pending remembering how to call speakers from slots again (i forgor)

```
function intro.PlayIntro()
    UI:ResetSpeaker()
    UI:WaitShowDialogue("Line 1")

    UI:SetSpeaker(_DATA.Save.ActiveTeam.Players[0])
    UI:WaitShowDialogue("Line 2")

    UI:SetSpeaker(_DATA.Save.ActiveTeam.Players[1])
    UI:WaitShowDialogue("Line 3")

    UI:SetSpeaker(_DATA.Save.ActiveTeam.Players[2])
    UI:WaitShowDialogue("Line 4")

    UI:ResetSpeaker()
    UI:WaitShowDialogue("Line 5")
end
```

Save and run the new script. You should see the dialogue you defined with the speakers run.

### Exiting the intro

Once we've finished setting everything up and ran our basic dialogue, we want to send the player to our "actual" starting ground map.

When defining this map, we want to make sure it has been set to a zone like we set this map to earlier. Create a zone appropriate to the context of the ground map you're traveling to.

- If its a hub area, you should create a zone for all of the "hub" ground maps. Keep track of which slot the starting ground map you want to travel to is in.
- If its a dungeon entrance, you can create a ground map and then add it to the ground maps of that zone.
- If you are completely unsure as to where to send the player, you can use the `post_office` map defined in the base game's `guildmaster_island` zone. This is a good test map because there is minimal initializing script and you can see the party leader.

We want to have the player travel to that given ground map in that zone to exit. To travel to the `post_office` map, which is ground map index 12, change the function to this:

```
function intro.ExitIntro()
  GAME:EnterZone('guildmaster_island', -1, 12, 0)
end
```

### Final test

Now let's make sure everything works as expected:

1. Create a new save file.
2. You should see the intro dialogue print.
3. You should be sent to the ground map you specified.
4. The visible party leader should be the Pokémon in slot 0.
5. Your party should consist of the Pokémon you defined previously, with the right level, name, ability, and form.
6. You should not see the "shift up" and "shift down" options available when selecting any of the team members.
7. No errors should be thrown.

If you observe all of this behavior, then you've successfully initialized your quest's party properly!

## Extras

There's a few more things you may want to add to the script.

### Other setup

The code is structured in the specific way it is to make adding new configuration easy. In some cases, you may want to define certain save variables.

A basic type of variable setup you should do is have a "seen intro" flag. This is useful for testing purposes, and as a fallback if you accidentally ever send the player to the intro room again to prevent their entire party and assembly being emptied. There are also text boxes added asking a player to report this access as a bug.

First, change your ExitIntro function to set this save variable:

```
function intro.ExitIntro()
  SV.SeenIntro = true
  GAME:EnterZone('guildmaster_island', -1, 12, 0)
end
```

Now we should create the function that will be called if the player happens to re-enter the room while having seen the intro already:

```
function intro.NotStartup()
  UI:ResetSpeaker()
  UI:WaitShowDialogue("You've already seen the intro, but re-entered the intro room.")
  UI:WaitShowDialogue("If you're not here through the dev menu, that's a bug. Please report it to this mod's developer!")
  UI:WaitShowDialogue("Sending to the first groundmap as a fallback.")
  intro.ExitIntro()
end
```

Finally, we need to edit the enter function to check if the intro has already been seen before and to call `NotStartup` if that is the case.

```
function init.Enter(map)
  --GAME:FadeIn(20)
 if SV.SeenIntro then
    intro.NotStartup()
  else
    intro.SetupParty()
    intro.PlayIntro()
    intro.ExitIntro()
  end
end
```
