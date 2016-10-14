select
 a.job
,a.broken
,b.rowner
,b.rname
,b.interval
from dba_jobs    a
    ,dba_refresh b
where a.job = b.job
order by a.job;
