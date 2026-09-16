# Tutorial:Coroutines in Scripts

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Coroutines_in_Scripts

Coroutines are an important part of scripting lua cutscenes in PMDO. This page is a tutorial and reference on basic usage of them.

## Coroutine Basics

Like in most programming languages, by default lua executes all of its functions in order of script execution. In most cases, this is a very good thing! Think about it in terms of text boxes - we don't want other text boxes trying to appear while the player is still on a previous textbox. We have to finish whatever action we are doing first before the next line of code can execute.

However, in some cases this becomes a hindrance. If we want two NPCs to walk together, then how do we have them do so simultaneously? The first one has to finish walking before the second one begins, and this looks very... Clunky.

Cases like this, where we want other actions to happen simultaneously before others have "completed", or when other actions are ongoing, are where we have to make use of coroutines.

Coroutines split off a separate concurrent process that takes place on another "thread" of PMDO's processes.

## Creating a Coroutine

There is a function in PMDO, called `TASK:BranchCoroutine`, that takes the function it is given and executes it on a separate thread.

### Function Init in Lua

In lua, functions are defined by initializing them as variables. When creating functions in a scripting file, we always do so by first creating a table, then assigning that function to a field of that table:

```
-- The table the function occupies
myNamespace = {}

-- Defining the function here
function myNamespace.Fun()
  -- imagine this function does something
end

-- Calling the function
myNamespace.Fun()
```

This stores the function in a place that can be referenced throughout files. In order to run a coroutine, we need to either reference or define the function that should be executed.

### Branching a Coroutine

`TASK:BranchCoroutine` will create a branch that executes the coroutine we pass it. The ideal way to do this is to first define the coroutine in another variable, and then run `TASK:BranchCoroutine`:

```
-- The function we want to branch
local coro = function()
    GROUND:EntTurn(char, Direction.UpRight)
    GAME:WaitFrames(60)
    GROUND:EntTurn(char, Direction.UpLeft)
    GAME:WaitFrames(60)
    GROUND:EntTurn(char, Direction.Up)
end

-- Creating the branch so coro starts but code exeuction of this file continues past this line
local runningCoro = TASK:BranchCoroutine(coro)
```

We can alternatively define the function itself in the parameters, although this creates code that's a bit harder to read:

```
-- branching with defining the corotuine in the parameters itself
local runningCoro = TASK:BranchCoroutine(function() SOUND:PlayBGM("Murky Forest.ogg", false) end)
```

Notice how we saved the output of `TASK:BranchCoroutine` to a variable. This keeps track of the status of the coroutine. There is an important reason why this was done.

## Waiting for Coroutines

When running coroutines, the typical problem with running multiple functions at the same time makes itself known: How do we know that any of our functions actually finished executing? This is important because we need to have a way of determining the current state everything is in.

In the earlier example, we may want the two NPCs to turn to face each other when they stop walking, and then continue the rest of the cutscene. We want to wait for their walking to finish - but we need a way of checking the coroutines branches for completing execution so we can proceed...

With `TASK:BranchCoroutine` to a variable like before, we gain the ability to check if the coroutine has finished execution using the function `TASK:JoinCoroutines`. This function causes execution of the script to wait until all of the links to the coroutines it is given notify the function that coroutine execution is complete.

To wait for one of the coroutines branched previously, we would do so like the following:

```
TASK:JoinCoroutines({runningCoro})
```

Here is an example of that being performed as a portion of a much larger cutscene script:

```
-- Branch all of the coroutines that will be active
local coro1 = TASK:BranchCoroutine(function() SOUND:PlayBGM("Murky Forest.ogg", false) end)
local coro2 = TASK:BranchCoroutine(function() GROUND:MoveToPosition(pic, picWalkPoint1.x, picWalkPoint1.y, true, 4) end)
local coro3 = TASK:BranchCoroutine(noticePichu)

-- All of these coroutines will occur concurrently with this dialogue being shown
ScriptFunc.StartTalkingDuringConvo(argue.line1, "Shouting", pic) -- shows a textbox with a new speaker

-- All of the movement, music playing, and expressions must complete first, and then the rest of the script can proceed
TASK:JoinCoroutines({ coro1, coro2, coro3 })

-- This next textbox will only show up once all three of those coroutine's actions have completed, even if the player closed the textbox before by then
ScriptFunc.StartTalkingDuringConvo(argue.line2, "Surprised", lar) -- shows a textbox with a new speaker
```

`TASK:JoinCoroutines` should **always** be used just before hitting the part of the script that assumes the coroutine has finished, even if there appears to be no practical reason to do so. Otherwise, problems may occur with the script if everything isn't in a consistent state when continuing.
