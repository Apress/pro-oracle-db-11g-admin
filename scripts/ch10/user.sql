select
  count(*)
 ,username
from v$session
group by username;
