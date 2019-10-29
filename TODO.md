# Interface to search notes/data
Goal: search for mud info and see it on screen
like eq, mobs, areas, etc.

Do i want it in the terminal, what if it was in a browser
- like a go app connected to a db
- could create a form to enter stuff and make it searchable after
- good reason to learn react or the like :)
- takes me out of the terminal though...i prefer to stay on the cli

Interface:
'msearch' or 'ms'

Menu:
  1. Areas
  1. Eq (Equipment)
  1. Guilds
  1. Mobs

'ms areas'

'ms armours'
- find all entries tagged armours?
'ms <entry>'
- details about thing

Entry:
Tags: things to search for/on...?what if i just use an ES docker container and use ES?
- a dependency though
- easiest to search for matches

Storage:
- es docker, but need to persist
  - depends on docker being installed
- sqlite...simple and embedded, usually on all the things
  - still a dep
  - data has to be more structured
  - a little easier to save in github, although should save as a dump?


# Use map via port sharing

Example on [Map Help](https://tintin.sourceforge.io/manual/map.php)

- In new terminal type '#port init mapper 4051'
- In 3k session type '#session mapper localhost 4051'
- Switch back to 3k session: '#3k'
- #map map 120x50 mapvar v
- #mapper #line sub {secure;var} #send {$mapvar}
- check map in other terminal

Is this better than just writing/tailing a file?
