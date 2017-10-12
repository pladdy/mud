# MUDing is FUN!

These are my tintin++ files and profiles for 3 Kingdoms: http://3k.org/

## Install Repo
`git clone git@github.com:pladdy/mud.git`
- this has been tested to run on a Mac; I've made some efforts to make it nix' compatible but it might need more love

## Install deps on osX
`make install`
- This might work on ubuntu/fedora which use apt-get and yum...not tested yet

### Dependency Notes
- Unix based OS
  - all tested and built on macOS (Yosemite then Siera)
  - cygwin seems to work if you're using windows (tested by Wag)
- Perl; this should already be installed with non Window OS'.  Text parsing is hard
  in tintin so I opt to use Perl for some things
- TinTin++ (2.01.2) Mud Client: http://tintin.sourceforge.net/
- Tmux (can install via brew on mac, unsure on cygwin)
  - this is only if you want to use the -t option when you './play'
  - if you'd rather not, there's a helper script in bin/ that let's you "watch" the map in another pane/window

### Install TinTin++ from source
- Download source from http://tintin.sourceforge.net/download.php
- Check install instructions here: http://tintin.sourceforge.net/install.php
- God speed

## Setup a profile to play
The *profiles/* directory houses profiles.  These are my files that handle setting up the session when I want to log in with a specific character.

To set up your own profile you can copy and replace with your character name.  Make sure to change your 'chracter' and 'guild' directory variables.

## Usage
`./play -p <your profile>`

The play executable will automatically search the *profiles/* directory for the given character
file.

## Executables
- **play**      : wrapper to start tintin session.  ./play -h for help
- **watch-map** : quick utility to launch tail on the map so i can watch it in the window
  - you can pass in a width and a height so that the map will be rendered to that dimension
  - if you use the tmux option in play, the tmux session will get a pane devoted to the map

## Docs
If you want to learn more about what commands are available while playing, check the tin/* README.md files.
