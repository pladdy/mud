# MUDing is FUN!

These are my tintin++ files and profiles for 3 Kingdoms: http://3k.org/

## Install Repo

`git clone git@github.com:pladdy/mud.git`

- this has been tested to run on a Mac; I've made some efforts to make it nix' compatible but it might need more love

## Install Dependencies

`make install`

- This might work on ubuntu/fedora which use apt-get and yum...not tested yet

## Setup a profile to play

To set up a profile run `bin/create_profile <char name> <guild name>`

Example: `bin/create_profile gilead necros`

The `profiles/` directory houses profiles.  These are the files that handle setting up the session when loggin in with a specific character.

## Usage

`./play -p <character name>`

- The play script will automatically search the *profiles/* directory for the given character file.
- The map that loads is displayed on the right of the client screen.  Currently the client screen
  is set to a hard coded width of 101.  Any remaining screen width will be used for the map.
  - I use this client with a terminal screen of 230 width, I haven't tested it with resizing or
    smaller widths.

## Docs

If you want to learn more about what commands are available while playing, check the `tin/*` directory README.md files.

## Notes

### Dependency Notes

- Mac/Unix based OS
- Cygwin seems to work as an OS platform if you're using windows (tested by Wag)
- Perl
  - This should already be installed by default on non-windows OS' (and in Cygwin)
- TinTin++ Mud Client: http://tintin.sourceforge.net/

## Development

### Tagging

Can add tags via makefile:

```
make tag type=patch # will create a patch: 0.5.0 -> 0.5.1 for example
# after creating tag
git push <tag>
```
