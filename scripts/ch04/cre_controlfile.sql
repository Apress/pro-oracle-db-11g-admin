CREATE CONTROLFILE REUSE DATABASE "O11R2" NORESETLOGS  ARCHIVELOG
    MAXLOGFILES 16
    MAXLOGMEMBERS 4
    MAXDATAFILES 1024
    MAXINSTANCES 1
    MAXLOGHISTORY 876
LOGFILE
  GROUP 1 (
    '/ora02/oraredo/O11R2/redo01a.rdo',
    '/ora03/oraredo/O11R2/redo01b.rdo'
  ) SIZE 100M BLOCKSIZE 512,
  GROUP 2 (
    '/ora02/oraredo/O11R2/redo02a.rdo',
    '/ora03/oraredo/O11R2/redo02b.rdo'
  ) SIZE 100M BLOCKSIZE 512,
  GROUP 3 (
    '/ora02/oraredo/O11R2/redo03a.rdo',
    '/ora03/oraredo/O11R2/redo03b.rdo'
  ) SIZE 100M BLOCKSIZE 512
DATAFILE
  '/ora02/dbfile/O11R2/system01.dbf',
  '/ora02/dbfile/O11R2/sysaux01.dbf',
  '/ora02/dbfile/O11R2/undotbs01.dbf',
  '/ora02/dbfile/O11R2/users01.dbf',
  '/ora02/dbfile/O11R2/toos01.dbf',
  '/ora02/dbfile/O11R2/users02.dbf'
CHARACTER SET UTF8;




