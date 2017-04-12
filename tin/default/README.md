## Aliases
- **gfiles**
  grep non tin/map/git files for text.  returns a list of files that match
- **fcat**
  given a path to a file (found by gfiles) dump the contents to the screen
  this is helpful for reading through lists
  Example: I want to see my list of shield notes so i can run to get a shield:
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
