select
  view_name
 ,text
from dba_views
where owner = upper('&owner')
and view_name like upper('&view_name');




