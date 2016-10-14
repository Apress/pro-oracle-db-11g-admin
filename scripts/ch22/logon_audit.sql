select
 username
,action_name
,to_char(timestamp,'dd-mon-yyyy hh24:mi:ss') event_time
,to_char(logoff_time,'dd-mon-yyyy hh24:mi:ss') logoff_time
from dba_audit_trail;
