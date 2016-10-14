CREATE DATABASE O11R2
  maxlogfiles 16
  maxlogmembers 4
  maxdatafiles 1024
  maxinstances 1
  maxloghistory 680
  character set "UTF8"
DATAFILE '/ora01/dbfile/O11R2/system01.dbf'
  SIZE 500m
  EXTENT MANAGEMENT LOCAL
UNDO TABLESPACE undotbs1 DATAFILE '/ora02/dbfile/O11R2/undotbs01.dbf'
  SIZE 800m
SYSAUX DATAFILE '/ora03/dbfile/O11R2/sysaux01.dbf'
  SIZE 200m
DEFAULT TEMPORARY TABLESPACE temp TEMPFILE '/ora03/dbfile/O11R2/temp01.dbf'
  SIZE 800m
DEFAULT TABLESPACE users DATAFILE '/ora02/dbfile/O11R2/users01.dbf'
  SIZE 20m
LOGFILE GROUP 1
  ('/ora02/oraredo/O11R2/redo01a.rdo',
   '/ora03/oraredo/O11R2/redo01b.rdo')  SIZE 100m,
       GROUP 2
  ('/ora02/oraredo/O11R2/redo02a.rdo',
   '/ora03/oraredo/O11R2/redo02b.rdo' ) SIZE 100m,
       GROUP 3
  ('/ora02/oraredo/O11R2/redo03a.rdo',
   '/ora03/oraredo/O11R2/redo03b.rdo' ) SIZE 100m
USER sys    IDENTIFIED BY secretfoo
USER system IDENTIFIED BY secretfoobar;

