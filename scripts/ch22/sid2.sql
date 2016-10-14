select
  'USERNAME : ' || s.username || chr(10) ||
  'OSUSER   : ' || s.osuser   || chr(10) ||
  'PROGRAM  : ' || s.program  || chr(10) ||
  'SPID     : ' || p.spid     || chr(10) ||
  'SID      : ' || s.sid      || chr(10) ||
  'SERIAL#  : ' || s.serial#  || chr(10) ||
  'MACHINE  : ' || s.machine  || chr(10) ||
  'TERMINAL : ' || s.terminal || chr(10) ||
  'SQL TEXT : ' || q.sql_text
from v$session s
    ,v$process p
    ,v$sql     q
where s.paddr  = p.addr
and   p.spid   = '&PID_FROM_OS'
and   s.sql_id = q.sql_id;
