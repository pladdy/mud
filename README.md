# MUDing is FUN!

These are my tintin++ files and profiles for 3 Kingdoms: http://3k.org/

## Dependencies
TinTin++ Mud Client: http://tintin.sourceforge.net/

## Install
`git clone git@github.com:pladdy/mud.git`

## Setup
Currently the *profiles/* directory houses my profiles.  These are my files that handle setting
up the session when I want to log in with a specific character.

To set up your own profile you can copy and replace with your character name.  Make sure to change
your 'chracter' and 'guild_dir' directory variables.

## Usage
`./mud profiles/<your profile>.tin`

## Utilities
- **mud**       : wrapper to start tintin session.  call with a profile name and it launches it
- **watch_map** : quick utility to launch tail on the map so i can watch it in the window

## Caveats
I've attempted to organize them as best as I can but it's not great and needs work.  Broad/general
stuff used by all characters/guilds is in the parent directory.

I'd like to re-work this somewhat and either have all the generally used things in one directory
and then the utilities in the main directory...blah blah I'm lazy.  One day :).

