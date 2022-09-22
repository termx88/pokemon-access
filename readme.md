# Pokémon Access Autowalk
# Based on Version 3.0.1

## Description Of Autowalk features
Key bind for walking to camera is "w". Key bind for walking to the selected item is "i". 
Walking can be stopped by pressing a controller key. As in A, B, Select, Start, L, R or a direction key. When walking to item, it will try activating the destination when it can't be passed. Such as an NPC or signpost. Will activate NPC's behind counters.
Deals with HM tiles appropriately by type. In Red/Blue/Yellow, HM tiles have to be activated from the pokemon selection menu, so HM tiles have to be manually activated.

### Extra notes on the way different HM tiles are treated: 
* Presses A on bushes, when entering water, whirlpool. 
* Does not press A when going up a waterfall, because there's no way to make sure player is actually facing it. 
* Does go down waterfalls. 
* Doesn't find a path through boulders.

### Known problems of the script
* New messages are untranslated.
* In Yellow will walk into player's pikachu before activating it. When pikachu is standing on an entrance, this results in walking into a building. Haven't filter out destination by sprite, because there are non-player pikachu.
* Camera can't walk beyond a map connection. (reading path results in crash in this and 3.0.1)
* Because walking frame values are tweaked for individual games. In cases where walking values differ, such as crystal clear's bike, the walking is sub optimal, but does still work.
* on_map function's changes don't perfectly filter out menus. In Red/Blue/Yellow's pokedex data screen, area map and town map returns true. Which crashes. In Gold/Silver/Crystal pokedex, maps, and PKHeX badges screen. Which doesn't crash, but it might start pressing buttons as if walking. It's possible to accidentally fly to a semi random location. Or change selection in flying map or pokedex.

# Beyond here is the Standart Pokémon Access Readme (with minor changes, such as an updated shortcut list)
## Introduction

The Pokemon access project is an improved version of the Pokecrystal Access Project, a set of scripts which initially provided access to Pokémon Crystal for people using a screen reader.
The goal of this project is to extend this functionality throughout all the Pokémon games. Current version has support for the following games, but in the future it will include, if it's possible, support for more games unified into this script.

-Pokémon Red, Blue and Yellow.
-Pokémon Gold, Silver and Crystal.
-Pokémon Fire Red and Leaf Green.

These scripts are designed to work with the VBA-ReRecording GameBoy emulator.
  
## Requirements and installation
1. Download the GameBoy emulator VBA Rerecording from https://mega.nz/file/ogEV1LZI#GgOG9ayodsIO7tbwBCNlQI8YenvsL_pnf-FSJC8m5S4

2. Get a compatible rom. Currently, the script supports the following:

-Pokémon Red, Blue and Yellow: : English, French, German, Italian and Spanish.
-Pokémon Gold, Silver and Crystal: English, French, Italian, Spanish and Brazilian Portuguese (crystal only).
-Pokémon Fire Red and Leaf Green: English (version 1.0) and Spanish.

3. After you have the desired rom, extract and run VBA.

4. Go to the Options menu, Head-Up Display, Show Speed, None (alt-o, h, s, enter)
Without this, NVDA reads the title bar every time it changes.

5. Optional but recommended: turn down the sound. In the Options menu, navigate to Audio, Volume (alt o, a, v)

.25x for GameBoy ROMs and .5x for GameBoy Advance ROMs.

## Starting the game
Each time you run VBA, you'll need to load the rom.
You can do this from the open dialog, or load a recent rom after you've opened it once.

Once the rom is loaded, load the lua script (tools, lua, New Lua script window).
From there, load pokemon.lua, press run. It should say ready (or your language equivalent, bassed on the game you've downloaded), alt tab out and back in again

## Keys
* Standard gameBoy keys: z/x are a/b, a/s l/r, enter/backspace start/select and arrows.
* j, k and l - previous, current and next item
* shift k - rename current item
* m - read current map name
* shift M - rename current map
* t - read text on screen, if any
* y - read current position
* h - read enemy health if in a battle
* shift + h - read player health if in a battle
* e - read the surrounding tiles (for debugging purposes)

### Item
* j, k and l - previous, current and next item
* shift k - rename current item
* p - read pathfind. This tries to find and read a path to the selected item.
* Shift + P - Toggle HM compatibility when searching for path. For example surf or cut
* i - walk to selected item. This tries to find and walk a path to the selected item.

### Camera
* d - move the camera left, stopping at walls
* g - move the camera right, stopping at walls
* r - move the camera up, stopping at walls
* v - move the camera down, stopping at walls
* f - move the camera to the player's position
* add shift to d/g/r/v to move the camera, ignoring walls
* Shift + y - read current camera position
* shift+f - pathfind to camera position
* w - walk to camera. This tries to find and walk a path to camera's position.

### Gold/SILVER/Crystal exclusive keys
* shift+e - say which piece you are holding (on the unown puzzles)

## HackRom support
Current version of the script has extended support for hackroms of the games previously mentioned.
In the future, you'll have a more intuitive in-game feature to manage HackRoms. For now, the process is as follows.

You've loaded a ROM that the script detects as "Language not supported" or "Game not supported".
You return to the game ignoring the previous result... but wait, if you try to execute any script command you'll only get the message "Script not loaded". Okay, let's fix this...

1. With the incompatible game running, press shift+0. A window will show up, asking you for a "base game folder". This, in other words, is the base game script that this incompatible game will use. You'll have to access the lua/game folder, and here you'll see all compatible scripts. Keep in mind that you have to tell the script the exact folder name. For example, if you want to use the red/blue script, you'll write 'red_blue'; if you want to use the pokémon crystal script you'll write crystal, etc...
2. When you type the base folder name and press "OK", if the folder is valid the script now asks you for a language for the spoken messages (not for the game names, those are into the data folder). You have to enter a valid language (see languages available inside the messages folder) and put your prefered one (en, es, it...).
3. When you type the language and press "OK", if the language is valid the script now asks you for a data folder. You have to enter a name of a valid data folder. This is the folder which containts the LUA files for the game (maps.lua, sprites.lua, memory.lua...). This folder must be inside the base game folder.
4. When you type the language code and press "OK", if the language is valid the script will restart automatically and load the new data.
5. Congratulations! Now you can enjoy your hack!

### Notes
* You can edit previously added HackRoms pressing again Shift + 0, for example if you want to try another base script or if you develop a custom extension  for a specific hack.

## Notes
New translations for the supported games are welcome. You should translate the files "maps.lua" and "sprites.lua" located on the game/[game]/[lang]  ([lang] can be any of the existing languages, choose which is better for you to translate from). You should translate asswell the file messages/[lang].lua (applies same rules). Once translated, you can send these files to me (or make a PR).

## Contact information
If you find a bug, or want to contact me about these scripts, my contact information is below.
for bugs, send a save state with instructions on how to reproduce the issue from it, whenever possible. You can save a named one with control shift s in the game.

Email: nuive.code@gmail.com
Source code: https://github.com/nuive/pokemon-access

## Credits
None of this would have been possible without the original Pokecrystal Access Project written by Tyler Spivey, who did a great work with that. Here is the original project information.

Original project homepage (pokecrystal access): http://allinaccess.com/pca/
Original source code: https://github.com/tspivey/pokecrystal-access

### Additional contributors
-ambro86 for the italian translations.
-pika-san for the french translations.
-janagirl for the german translations.

