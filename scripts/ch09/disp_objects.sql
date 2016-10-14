select
 owner
,object_name
,object_type
,status
from dba_objects
where object_name like upper('&object_name%');


