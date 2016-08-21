# MUDing is FUN!

These are my tintin++ files and profiles for 3 Kingdoms: http://3k.org/

## Dependencies
- 'Nix based OS (all this stuff runs on mac os)
  - cygwin seems to work if you're using windows (tested by Wag)
- TinTin++ Mud Client: http://tintin.sourceforge.net/
- Tmux (can install via brew on mac, unsure on cygwin)

## Install
`git clone git@github.com:pladdy/mud.git`
- this has been tested to run on a Mac; I've made some efforts to make it
  nix' compatible but it might need more love

## Setup
Currently the *profiles/* directory houses my profiles.  These are my files that handle setting
up the session when I want to log in with a specific character.

To set up your own profile you can copy and replace with your character name.  Make sure to change
your 'chracter' and 'guild' directory variables.

## Usage
`./play -p <your profile>`

The play executable will automatically search the *profiles/* directory for the given character
file.

## Executables
- **play**      : wrapper to start tintin session.  ./play -h for help
- **watch-map** : quick utility to launch tail on the map so i can watch it in the window
  - you can pass in a width and a height so that the map will be rendered to that dimension
  - if you use the tmux option in play, the tmux session will get a pane devoted to the map
