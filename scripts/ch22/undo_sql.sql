select 
 s.sid 
,s.serial# 
,s.osuser 
,s.logon_time 
,s.status 
,s.machine 
,t.used_ublk 
,t.used_ublk*16384/1024/1024 undo_usage_mb 
from v$session     s 
    ,v$transaction t 
where t.addr = s.taddr;

