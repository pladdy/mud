# tt++ files
Tintin files are stored in different directories in an attempt to organize them
by a theme.

## default/
These are the .tin files used by all profiles.

### Useful Aliases Provided
- **gfiles**
  grep non tin/map/git files for text.  returns a list of files that match
- **fcat**
  given a path to a file (found by gfiles) dump the contents to the screen
  this is helpful for reading through lists
  Example: I want to see my list of shield rooms i can run to get a shield:
    - `gfiles shield`
    - `fcat lists/eq/shields.txt`
- **dtrig**
  post kill trigger; type it in while fighting and on death of mob list of
  commands (separated by commas) will get exectued
  Example:
    - `dtrig wear amulet,keep amulet,se`
    - On the killing blow you would wear amulet, then keep amulet, then move se
- **btrig**
  After kill, but before a corpse is used, do a list of commands
  Example:
    - `btrig dog feed`
    - On the killing blow, but before I use the corpse, my dog would eat it


## guilds/
Files specific to each guild.

## map/
Files specific to mapping.

### Useful Aliases Provided
- **gmap**
  lets you grep the map for text.  useful for finding room names or items so you
  can sprint to the room that has it.  it returns tt++ formatted map lines (
  #help map to learn more about tt++ map)
