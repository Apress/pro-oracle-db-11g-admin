set head off lines 132 pages 0 trimspoo on
spo renlog.sql
select
 'alter database rename file ' || chr(10)
 || '''' || member || '''' || ' to ' || chr(10) || '''' || member || '''' ||';'
from v$logfile;
spo off;
