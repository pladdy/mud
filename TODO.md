# TODO

## Areas to explore

Alizarian Tower (get helmet):
  14:55 Trout : there is a jar you have find in the graveyard, far left
                side. You also collect 4 different plant sprigs, hemlock,
                adder's head etc. then place them into the hands of the
                statues in the tower. that opens up the basement.
  14:56 Trout : the jar contains a liquid (metal?) that you pour onto the
                altar or whatever is down there.
  14:56 Trout : then the demon comes and thanks you, dropping the helmet
                and some coins

Banshee's lair (In Village of Erah)

Transylvania Hotel basement (Party only?)

Finish mapping murus faralain 2.0
  - azra's tunnel (need amulet of flying)

Finsh tomb of king alaren (missing two rooms)

Map ralintaro's towers

## Interface to search notes/data

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
