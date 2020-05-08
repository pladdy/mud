# Default Mud Stuff

The 'default' things all profiles use are within these directories.  I've tried to document the useful
aliases but may have missed some.

## Bags

You can make mud aliases for bagging, but I made some here to be more fancy, specifically with putting
items into bags.

- **gb**
  - Usage: `gb <thing> <bag number>`
    - Get thing from bag.

- **pb**
  - Usage: `pb <thing> <bag number>`
    - Let's you put anything not kept into your bag from your inventory.  Even let's you specify a specific
    numbered thing.
    Example:
      - `put key 4 3`
      - This would put key 4 in your inventory into bag 3.

- **pba**
  Puts 'all' in your bags.  Attempts to put all in bags 2 - 12 in your inventory.  It skips bag 1
  because I use that for things I don't want mingling with others.

## Corpse/Kill Aliases

- **btrig**

  After a kill, but before a corpse is used, do a list of comma separated commands.
  Example:
    - `btrig dog feed,pet dog,put all in bag`
    - On the killing blow, but before I use the corpse, the following commands would execute:
      - dog feed
      - pet dog
    - put all in bag

- **dtrig**

  Post kill trigger; type it in while fighting and on death of mob the list of
  commands (separated by commas) will get exectued.
  Example:
    - `dtrig wear amulet,keep amulet,se`
    - On the killing blow you would:
      - wear amulet
      - then keep amulet
      - move se

- **kk**
  - Usage: `kk <mob 1>,<mob 2>,<mob n>`
  - Kill alias to kill multiple comma serpated mobs.

- **ktrig**
  - Usage: `ktrig <on | off>`
  - Turns on or off kill triggers.  Useful if you need to stop grabbing corpses, or if mob drops something
  you don't want to pick up.

## File Aliases (similar to Notes)

The notes directory keeps a list of notes I make and add to this repository.  They can be
searched and read while mudding using the below commands:

- **gfiles**
  - Usage: `grep <text>`
    - 'grep' non tin/map/git files for text.  Returns a list of files that match the text.

- **fcat**

  Given a path to a file (found by **gfiles** for example) dump the contents to the screen.
  This is helpful for reading through lists
  Example: I want to see my list of shield notes so i can run to get a shield:
    - `gfiles shield`
    - `fcat notes/lists/eq/shields.txt`

## Gagger

Some text you don't want to show up on screen.  Lines to tag can be added here: `tin/default/gags.txt`

- **gag**
  - Usage: `gag <on | off>`
  - Will turn on gags for each line of test in the above gags.txt file.

## Notes

- **notes**
  - Usage: `notes search <search text>`
    - Searches notes for `<search text>`

  - Usage: `notes read <path to note>`
    - Reads the note onto the screen.
