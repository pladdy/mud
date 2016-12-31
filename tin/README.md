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

## guilds/
Files specific to each guild.

## map/
Files specific to mapping.

### Useful Aliases Provided
- **gmap**
  lets you grep the map for text.  useful for finding room names or items so you
  can sprint to the room that has it.  it returns tt++ formatted map lines (
  #help map to learn more about tt++ map)
