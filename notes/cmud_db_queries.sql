sqlite3 cmud_db.dbm
.headers on

-- zonetbl has zone list:

select * from zonetbl where name like '%Rohm%';

/*
ZoneId|Name|ZoneFile|UserID|Modified|Script|Desc|X|Y|Z|Dx|Dy|MinX|MinY|MinZ|MaxX|MaxY|MaxZ|Background|XScale|YScale|XOffset|YOffset|Divisor|Multiplier|DefSize|DefSizeY|Res|Color|GridXInc|GridYInc|GridXOff|GridYOff|GridCol|Flags|Parent
545|Fan, Tunnels of the Rohm Giddor||0|2012-08-11 22:09:45|||-3120|-2640|0|1000|0|-5880|-3240|-3|-3000|-1800|-1||1|1|-6600|-3600|1|100|120|120|0|536870911|120|120|0|0|0|0|361
548|Fan, Grand Hall of the Rohm Giddor||0|2012-08-12 02:52:17|||-4560|-4080|-2|800|0|-6840|-5880|-6|-4440|-2760|-2||1|1|-7560|-6240|1|100|120|120|0|536870911|120|120|0|0|0|0|545

objecttbl has room notes that i've made
ObjId|Name|IDName|Hint|Desc|KindID|IconID|RefNum|fKey|X|Y|Z|Dx|Dy|ExitX|ExitY|ExitZ|Cost|Color|MetaID|StyleID|LabelDir|Enabled|Script|Param|UserStr|UserInt|Content|Flags|Deleted|UserID|Modified|DateAdded|ServerID|ZoneID
*/

select * from objecttbl where zoneid = 545; # all notes from rhom giddor tunnels;

select * from objecttbl where hint like '%tower%'; # looking for tower notes sans zone id;
