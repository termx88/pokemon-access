# Pok�mon Access Walk To Item
# Version 3.0.1

## Introduction

The Pokemon access project is an improved version of the Pokecrystal Access Project, a set of scripts which initially provided access to Pok�mon Crystal for people using a screen reader.
The goal of this project is to extend this functionality throughout all the Pok�mon games. Current version has support for the following games, but in the future it will include, if it's possible, support for more games unified into this script.

-Pok�mon Red, Blue and Yellow.
-Pok�mon Gold, Silver and Crystal.
-Pok�mon Fire Red and Leaf Green.

These scripts are designed to work with the VBA-ReRecording GameBoy emulator.
  
## Requirements and installation
1. Download the GameBoy emulator VBA Rerecording from https://mega.nz/file/ogEV1LZI#GgOG9ayodsIO7tbwBCNlQI8YenvsL_pnf-FSJC8m5S4

2. Get a compatible rom. Currently, the script supports the following:

-Pok�mon Red, Blue and Yellow: : English, French, German, Italian and Spanish.
-Pok�mon Gold, Silver and Crystal: English, French, Italian, Spanish and Brazilian Portuguese (crystal only).
-Pok�mon Fire Red and Leaf Green: English (version 1.0) and Spanish.

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

1. With the incompatible game running, press shift+0. A window will show up, asking you for a "base game folder". This, in other words, is the base game script that this incompatible game will use. You'll have to access the lua/game folder, and here you'll see all compatible scripts. Keep in mind that you have to tell the script the exact folder name. For example, if you want to use the red/blue script, you'll write 'red_blue'; if you want to use the pok�mon crystal script you'll write crystal, etc...
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

