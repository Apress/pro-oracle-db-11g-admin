select * from(
select
  b.sql_text
 ,a.username
 ,b.buffer_gets
 ,b.disk_reads
 ,b.sorts
 ,b.cpu_time/1000000 cpu_sec
from v$sqlarea b
    ,dba_users a
where b.parsing_user_id = a.user_id
order by b.cpu_time DESC)
where rownum < 11;
