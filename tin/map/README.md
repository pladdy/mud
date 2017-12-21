# 3 Kingdoms Map

The map is super helpful for sprinting about and charting your location on 3K.  I use it to mark
items, mobs, death traps, etc.  I use anything from roomnotes, roomnames, and colors to designate
different things.

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

- **gmap**
  Usage: `gmap <text>`
  Lets you grep the map for text.  Useful for finding room names or items so you
  can sprint to the room that has it.  It returns tt++ formatted map lines (
  #help map to learn more about tt++ map)

- **map**
  Show the map.

- **map key**
  Show the map key/legend.

- **map set <command>**
  Set the room color/symbol based on the command.  `map set` to see help.  Also allows you to add
  an optional note.
  Example: mark the room i'm in as a note because there's an item here:
  `map note this room has a cool thing`

- **map_write**
  Open the map for writing; basically new rooms get added to the map.

- **map_save**
  save change to map file (this is auto run at logout/session ld to save the map).

- **map_lock**
  Lock the map so you stop making new rooms

- **rshop**
  Used to run to shops.  I originally used `shop` but that conflicts with some mud
  rooms.  I renamed to rshop (for run shop).  `rshop` with no parameter shows a list
  of shops by reading the *../lists/areas/shops.txt* file.

- **run**
  Let's you sprint to different rooms given a 'roomname'.  Useful for running between
  areas and boot-running.
