# Tutorial:Text Guide

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Text_Guide

This document is a guide to displaying dialogue text in PMDO.

## Text Tester

This utility can be found in the Scripting tab of the dev panel:

[![](/wiki/images/0/0b/DevPanel_Script.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Script.png)
[![](/wiki/images/d/d1/DevPanel_Script_Dialogue.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:DevPanel_Script_Dialogue.png)

Enter text into the textbox, and click on the “Dialogue” box to display a textbox with the dialogue.

[![](/wiki/images/4/4b/Dialogue_Test.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:Dialogue_Test.png)

Make sure that you are currently in a ground or dungeon map (Not the title screen!). You can jump to one of those maps by using F12 or F1+F12 respectively.

## Text Tags

### color

Changes the text color to the provided hex code. If no argument is given, it resets the color.

```
Welcome to [color=#FFC663]Treasure Town[color]!
```

### pause

Pauses the text scrolling for the supplied number of frames. If 0 is given, the scroll will wait indefinitely until the player advances the text.

```
Ready,[pause=30] set,[pause=0] GO!
```

### speed

Changes the text scroll speed to the supplied value. 1.0 is default, 2.0 is twice as fast, 0.5 is half as fast.

```
[speed=4.0]Fast as a Ninjask![speed=0.2] Slow as a Slowpoke...
```

### emote

Changes the speaker's portrait emotion in the middle of a text box.

```
[emote=Determined]You Slowpoke![emote=Worried] We're gonna be late now...
```

The list of emotes in PMDO can be found in the `Base/GFXParams.xml` file.

### sound

Changes the text scroll sound.

```
Look what sound I can make! [sound=Battle/_UNK_DUN_Water_Drop]Very cool, right? [sound=Battle/_UNK_DUN_Water_Drop,10]I can even go slower... like so.
```

### br

Breaks the text into multiple windows.

```
Curiosity killed the cat.[br]But satisfaction brought it back.
```

### scroll

Breaks the text into multiple windows, with a scrolling animation between the two.

```
Curiosity killed the cat.[scroll]But satisfaction brought it back.
```

### script

Call a script in the middle of a text box. Useful for synchronizing cutscene animations to the text scrolling.

```
I’m talking,[script=0] and as I talk someone emoted.
```

The scripts must be passed as a Lua table of functions to  [UI:WaitShowDialogue](https://wiki.pmdo.pmdcollab.org/wiki/Script_Reference%23UI:WaitShowDialogue "Script Reference"):

```
local function exclaim()
  SOUND:PlayBattleSE("EVT_Emote_Exclaim_2")
  GROUND:CharSetEmote(chara, "exclaim", 1)
end
UI:WaitShowDialogue("What's that![pause=0] A [script=0]shiny!", { exclaim })
```

## Indefinite Articles

Main article: [Indefinite Article Tag](https://wiki.pmdo.pmdcollab.org/wiki/Indefinite_Article_Tag "Indefinite Article Tag")

When shown in textboxes, these tags turn into different words depending on the word that comes before after it. Very important for translation.

All articles can be capitalized for when they're at the beginning of a sentence.

### A/An

Vowel-dependent

- If the next word begins with a consonant, it becomes `a`
- If the next word begins with a vowel, it becomes `an`

```
I'm giving you [a/an] {0}.
```

### El/La

Gender-dependent

- If the next word is tagged with `[male]` or does not have a gender tag, it becomes `el`
- If the next word is tagged with `[female]`, it becomes `la`

```
[El/La] {0} se comió la manzana.
```

### Der/Die/Das

Gender-dependent

- If the next word is tagged with `[male]` or does not have a gender tag, it becomes `der`
- If the next word is tagged with `[female]`, it becomes `die`
- If the next word is tagged with `[neutral]`, it becomes `das`

```
[der/die/das] {0} ist lecker!
```

### Ein/Eine/Einen

Gender-dependent

- If the next word is tagged with `[male]` or does not have a gender tag, it becomes `einen`
- If the next word is tagged with `[female]`, it becomes `eine`
- If the next word is tagged with `[neutral]`, it becomes `ein`

```
Ich gebe dir [ein/eine/einen] {0}.
```

### Ein/Eine/Ein

Gender-dependent

- If the next word is tagged with `[male]` or does not have a gender tag, it becomes `ein`
- If the next word is tagged with `[female]`, it becomes `eine`
- If the next word is tagged with `[neutral]`, it becomes `ein`

```
Schau, das ist [ein/eine/ein] {0}!
```

### Il/La

Gender-dependent and vowel-dependent with special cases

- If the next word is tagged with `[male]`, or does not have a gender tag:
  - If the next word also begins with a vowel, except i+vowel, it becomes `l'`
  - Otherwise, if the next word also begins x/y/z/s + consonant/gn/ps/pn/i + vowel, it becomes `lo`
  - Otherwise, it becomes `il`
- If the next word is tagged with `[female]`:
  - If the next word also begins with a vowel, except i+vowel, it becomes `l'`
  - Otherwise, it becomes `la`

```
Mi piace [il/la] {0}.
```

### I/Le

Gender-dependent and vowel-dependent with special cases

- If the next word is tagged with `[male]`, or does not have a gender tag:
  - Otherwise, if the next word also begins x/y/z/s + consonant/gn/ps/pn/vowel, it becomes `gli`
  - Otherwise, it becomes `i`
- If the next word is tagged with `[female]`, it becomes `le`

```
Non mi piacciono [i/le] {0}.
```

### Uno/Una

Gender-dependent and vowel-dependent with special cases

- If the next word is tagged with `[male]`, or does not have a gender tag:
  - If the next word also begins with a vowel, except i+vowel, it becomes `un`
  - Otherwise, it becomes `uno`
- If the next word is tagged with `[female]`:
  - If the next word also begins with a vowel, except i+vowel, it becomes `un'`
  - Otherwise, it becomes `una`

```
Vorrei comprare [uno/una] {0}.
```

### 은/는

Vowel-dependent

- If the preceding word ends with a consonant, it becomes `은`
- If the preceding word ends with a vowel, it becomes `는`

```
{0}[은/는] 회피했다!
```

### 을/를

Vowel-dependent

- If the preceding word ends with a consonant, it becomes `을`
- If the preceding word ends with a vowel, it becomes `를`

```
{0}[을/를] 조심하는 게야.
```

### 이/가

Vowel-dependent

- If the preceding word ends with a consonant, it becomes `이`
- If the preceding word ends with a vowel, it becomes `가`

```
{0}[이/가] 공격을 받아냈다!
```

### 와/과

Vowel-dependent

- If the preceding word ends with a consonant, it becomes `와`
- If the preceding word ends with a vowel, it becomes `과`

```
{0}[와/과] 함께라면 조금 안심이야.
```

### 으/로

Vowel-dependent

- If the preceding word ends with a consonant, it becomes `으`
- If the preceding word ends with a vowel, it becomes `로`

```
{0}[으/로] 엄호하겠습니다.
```

### 이/라면

Vowel-dependent

- If the preceding word ends with a consonant, it becomes `이`
- If the preceding word ends with a vowel, it becomes `라면`

```
{0}[이/라면]라면 누구에게도 지지 않지!
```

### Gender Tags

Place these tags before item or object names to influence indefinite cases above.

"Day" is masculine in Spanish.

```
[male]Dia
```

The "Defense" stat is female in Italian.

```
[female]Difesa
```

"Choice Band" is neutral in German.

```
[neutral]Wahlband
```

## Special Characters

Use unicode escape characters to achieve special characters:

```
The total comes to 500\uE024. Will you pay?
Thanks! \u266A Please come again \u266A
```

Most special letters are placed in the [Private Reserved Area](https://en.wikipedia.org/wiki/Private_Use_Areas).

It is possible to add new special characters by  [Modding Font](https://wiki.pmdo.pmdcollab.org/wiki/Modding_Font "Modding Font").

Shop Prices: `\uE100-\uE109`

[![](/wiki/images/0/01/E100.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E100.png)[![](/wiki/images/3/33/E101.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E101.png)[![](/wiki/images/9/93/E102.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E102.png)[![](/wiki/images/0/04/E103.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E103.png)[![](/wiki/images/e/e9/E104.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E104.png)[![](/wiki/images/c/cc/E105.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E105.png)[![](/wiki/images/0/0c/E106.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E106.png)[![](/wiki/images/f/fc/E107.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E107.png)[![](/wiki/images/3/38/E108.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E108.png)[![](/wiki/images/3/34/E109.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E109.png)

Type icons: `\uE080-\uE092`

[![](/wiki/images/f/fd/E080.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E080.png)[![](/wiki/images/c/c6/E081.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E081.png)[![](/wiki/images/c/c9/E082.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E082.png)[![](/wiki/images/9/99/E083.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E083.png)[![](/wiki/images/d/db/E084.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E084.png)[![](/wiki/images/8/84/E085.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E085.png)[![](/wiki/images/6/6b/E086.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E086.png)[![](/wiki/images/5/53/E087.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E087.png)[![](/wiki/images/9/98/E088.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E088.png)[![](/wiki/images/b/ba/E089.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E089.png)[![](/wiki/images/0/04/E08A.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E08A.png)[![](/wiki/images/6/6f/E08B.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E08B.png)[![](/wiki/images/7/75/E08C.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E08C.png)[![](/wiki/images/e/e5/E08D.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E08D.png)[![](/wiki/images/f/f1/E08E.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E08E.png)[![](/wiki/images/0/04/E08F.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E08F.png)[![](/wiki/images/0/01/E090.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E090.png)[![](/wiki/images/3/35/E091.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E091.png)[![](/wiki/images/1/19/E092.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E092.png)

Item icons: `\uE0A0-\uE0B2`

[![](/wiki/images/0/08/E0A0.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0A0.png)[![](/wiki/images/6/64/E0A1.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0A1.png)[![](/wiki/images/a/af/E0A2.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0A2.png)[![](/wiki/images/3/3f/E0A3.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0A3.png)[![](/wiki/images/e/e5/E0A4.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0A4.png)[![](/wiki/images/6/6a/E0A5.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0A5.png)[![](/wiki/images/2/2f/E0A6.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0A6.png)[![](/wiki/images/6/65/E0A7.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0A7.png)[![](/wiki/images/1/19/E0A8.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0A8.png)[![](/wiki/images/0/0a/E0A9.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0A9.png)[![](/wiki/images/a/a1/E0AA.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0AA.png)[![](/wiki/images/3/37/E0AB.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0AB.png)[![](/wiki/images/d/d5/E0AC.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0AC.png)[![](/wiki/images/4/49/E0AD.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0AD.png)[![](/wiki/images/4/4f/E0AE.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0AE.png)[![](/wiki/images/d/d5/E0AF.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0AF.png)[![](/wiki/images/f/f6/E0B0.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0B0.png)[![](/wiki/images/0/0f/E0B1.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0B1.png)[![](/wiki/images/4/4f/E0B2.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E0B2.png)

Button icons: `\uF000-\uF029`

[![](/wiki/images/5/56/F000.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:F000.png)[![](/wiki/images/4/47/F001.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:F001.png)[![](/wiki/images/a/a8/F002.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:F002.png)[![](/wiki/images/3/39/F003.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:F003.png)

There are many more than listed here, and more may be added with new control schemes…

Unown Font: `\uE041-\uE05A`

[![](/wiki/images/2/28/E041.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E041.png)[![](/wiki/images/5/59/E042.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E042.png)[![](/wiki/images/9/92/E043.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E043.png)[![](/wiki/images/f/f6/E044.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E044.png)[![](/wiki/images/d/d3/E045.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E045.png)[![](/wiki/images/d/d3/E046.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E046.png)[![](/wiki/images/b/b0/E047.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E047.png)[![](/wiki/images/f/fe/E048.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E048.png)[![](/wiki/images/b/b6/E049.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E049.png)[![](/wiki/images/7/77/E04A.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E04A.png)[![](/wiki/images/8/81/E04B.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E04B.png)[![](/wiki/images/6/68/E04C.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E04C.png)[![](/wiki/images/b/b0/E04D.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E04D.png)[![](/wiki/images/7/76/E04E.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E04E.png)[![](/wiki/images/8/87/E04F.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E04F.png)[![](/wiki/images/b/bc/E050.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E050.png)[![](/wiki/images/c/c2/E051.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E051.png)[![](/wiki/images/e/e8/E052.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E052.png)[![](/wiki/images/f/fb/E053.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E053.png)[![](/wiki/images/4/49/E054.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E054.png)[![](/wiki/images/c/ce/E055.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E055.png)[![](/wiki/images/5/56/E056.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E056.png)[![](/wiki/images/8/8f/E057.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E057.png)[![](/wiki/images/b/ba/E058.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E058.png)[![](/wiki/images/7/76/E059.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E059.png)[![](/wiki/images/9/9f/E05A.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E05A.png)

[![](/wiki/images/a/a1/E03F.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E03F.png) `\uE03F`

[![](/wiki/images/3/30/E021.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E021.png) `\uE021`

If you shift the characters in your text by E000, you will automatically translate English letters to Unown. Make sure everything is capitalized.

Misc Icons:

- ♡ `\u2661`
- ♪ `\u266A`

- [![](/wiki/images/d/d7/E10A.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E10A.png) `\uE10A`
- [![](/wiki/images/f/f3/E10B.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E10B.png) `\uE10B`
- [![](/wiki/images/0/0d/E10C.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E10C.png) `\uE10C`
- [![](/wiki/images/d/dd/E10D.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E10D.png) `\uE10D`
- [![](/wiki/images/3/32/E10E.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E10E.png) `\uE10E`
- [![](/wiki/images/d/d0/E10F.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E10F.png) `\uE10F`
- [![](/wiki/images/d/d8/E110.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E110.png) `\uE110`
- [![](/wiki/images/0/0a/E111.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E111.png) `\uE111`
- [![](/wiki/images/5/58/E023.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E023.png) `\uE023`
- [![](/wiki/images/d/d0/E024.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E024.png) `\uE024`
- [![](/wiki/images/8/84/E040.png)](https://wiki.pmdo.pmdcollab.org/wiki/File:E040.png) `\uE040`
