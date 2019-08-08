Getting this error on Ubuntu:
#PROMPT SIZE (98) LONGER THAN ROW SIZE (80)
- has something to do with screen/terminal size

# Use map via port sharing?
Example on [Map Help](https://tintin.sourceforge.io/manual/map.php)

- In new terminal type '#port init mapper 4051'
- In 3k session type '#session mapper localhost 4051'
- Switch back to 3k session: '#3k'
- #map map 120x50 mapvar v
- #mapper #line sub {secure;var} #send {$mapvar}
- check map in other terminal

Is this better than just writing/tailing a file?
