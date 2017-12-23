# 3 Kingdoms Map

The map is super helpful for sprinting about and charting your location on 3K.  I use it to mark
items, mobs, death traps, etc.  I use anything from roomnotes, roomnames, and colors to designate
different things.

`map key` to see what colors mean what

The map file and the .tin files that supply map oriented actions/aliases are in the *map/* directory.
The actions and aliases setup a framework to handle actions and provide aliases to use the map
more effectively.

## Actions
Map actions are actions that move your character in some way.

#### Examples:
  - If you try to move west and a mob blocks you; the text can get saved in *actions/mistakes.tin*
    to stop you from moving on the map by mistake.  If you moved anyway it would incorrectly
    represent your position and screw up sprints.
  - Area specific events: for example you kill a specific mob and want to move somewhere.  These
    get logged under their specific area file.  Take a look in *actions/* for more details.

## Aliases
- **dungeon**
  Usage: `dungeon <dungeon> <level>`
  Using the map, will run you to a dungeon and set the scaler before entering to <level>.

- **map**
  Show the different map commands available.
  - edit
  - help
  - info
  - key
  - lock
  - name
  - save
  - search
  - set
  - undo

- **map set <command>**
  Set the room color/symbol based on the command.  `map set` to see help.  Also allows you to add
  an optional note.
  Example: mark the room i'm in as a note because there's an item here:
  `map note this room has a cool thing`

- **rshop**
  Used to run to shops.  I originally used `shop` but that conflicts with some mud
  rooms.  I renamed to rshop (for run shop).  `rshop` with no parameter shows a list
  of shops by reading the *../lists/areas/shops.txt* file.

- **run**
  Let's you sprint to different rooms given a 'roomname'.  Useful for running between
  areas and boot-running.
