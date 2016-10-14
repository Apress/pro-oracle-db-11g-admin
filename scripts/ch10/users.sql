set lines 132
col username form a15
col default_tablespace form a18
col temporary_tablespace form a20
col account_status form a16
--
select
  username
 ,default_tablespace
 ,temporary_tablespace
 ,account_status
 ,created
 ,lock_date
from dba_users
order by 1;
