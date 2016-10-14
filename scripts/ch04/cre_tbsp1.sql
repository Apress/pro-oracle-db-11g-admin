create tablespace tools
  datafile '/ora01/dbfile/INVREP/tools01.dbf'
  size 100m
  autoextend on maxsize 1000m
  extent management local
  uniform size 128k
  segment space management auto;


