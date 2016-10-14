create bigfile tablespace inv_big_data
  datafile '/ora02/dbfile/O11R2/inv_big_data01.dbf'
  size 10g
  extent management local
  uniform size 128k
  segment space management auto;



