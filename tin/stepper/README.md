# Stepper

Grinding can be no fun.  I found automating such things to be fun AND to be a blast to be at the keyboard while it happens.  The goal of this stepper is to move around, attack mobs, and repeat.  It also does this with some caveats:
- if a player is in the room move along, no exceptions
- only move around cardinal directions (it's a dumb stepper for now)
- move and attack; don't stop for regen; be careful if you need to rest in between fights
- it requires ansi to be on
- it comes with a blacklist; this can be modified so you just don't attack certain things
  - there's no API for this blacklist, modify directly in `./blacklist.txt`

## If you decide to use this feature abide by mud rules.

## Usage

`stepper on`

By invoking this command some things will happen.  Ansi will be modified, turned on, and you'll begin stepping.

`stepper off`

This command turns off the stepper.  Ansi is reverted (but not turned off).  Stepping will stop.

### Recommendations

Stepper in it's current state is best used in areas that are isolated by a non cardinal exit.  Those exits (like door, portal, enter, etc.) act as boundaries.  The stepper only parses for and moves along cardinal directions (n, w, s, e, nw, ne, sw, se) excluding u and d.

# Tracker

The stepper, uses a "tracker".  The tracker does just that: it tracks monsters in the room.  This basically means you can use the tracker as an autokill feature.  If you don't want the stepper but want to `auto_kill` or `ak` for short, you can use this.

## Usage

`tracker on`

Turn tracking on.  Modifies ansi and uses and external script to parse for monsters.

`tracker off`

Revert ansi changes and stop tracking monsters.
