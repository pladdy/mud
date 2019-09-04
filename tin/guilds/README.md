# Guild .tin files

Guild specific .tin files are in these directories.  Each guild has it's own set of actions,
aliases, variables, etc.

## To be implemented per guild:

- a 'use_corpse' alias; this alias gets called by killing blow actions so it
  needs to be set up so it will do something with a corpse for the guild

- 'commands_before_corpse' is an optional alias to do things before a corpse
  is used; can also think of this as commands to run after a kill is made but
  before the corpse is used

- 'commands_after_corpse' is an optional alias to do things after a corpse is
  used; great place for post kill activities like meditating and what not
