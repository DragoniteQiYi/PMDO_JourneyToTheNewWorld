SV.General =
{
  Rescue = nil,
  Starter = nil,
  Partner = nil,
  PlayedMysteryDungeon = false
  --Anything that applies to more than a single level, and that is too small to make a sub-table for, should be put in here ideally, or a sub-table of this
}

SV.Dungeon =
{
	Zone = 'beach_cave',
	Result = RogueEssence.Data.GameProgress.ResultType.Cleared,
	Rescue = false,
	SegmentID = 0,
	MapID = 0
}

SV.WorldMap = { -- used for the eventual 'world map' cutscene, basically saves strings of entry and destination points
	Start = 'hub',
	Dest = 'hub'
}

SV.Progression =
{
	Chapter = 1, --chapter tracking, 1-20 is main game, 21+ is major postgame flags
	SectionFlag = 0, --section flags keep track of progress within each chapter
	Epilogue = false, --are you in the postgame?
	DemoCompleted = false, --have you completed all available chapters?
	DaysPassed = -1, --day counter, -1 means disabled
	DaysToProgress = -1 --how many days until next flag, -1 means disabled
}

SV.Cutscene =
{
	ProgressFlag = 0 --used for when cutscenes have to switch back and forth between different ground maps
}

--From Halycon
-------------------------------------------------
-- Temporary Flags - Flags that reset at the end of the day or on screen transition are saved here
-------------------------------------------------
--todo, move existing daily flags here
--These flags are to be reset to their initial values at the end of the day.
SV.DailyFlags =
{
  GreenKecleonRefreshedStock = false,
  GreenKecleonStock = {},
  PurpleKecleonRefreshedStock = false,
  PurpleKecleonStock = {},

	SereneForestUnlocked = false -- used for the special "Oddity Cave" like dungeon
}

--partner flags for imported follow script
SV.partner =
{
    Spawn = 'Default',
    Dialogue = 'Default',
    LoadPositionX = -1,
    LoadPositionY = -1,
    LoadDirection = -1

}

SV.Personality = --handles dialogue variations
{
	PartnerTalkKind = 0
}