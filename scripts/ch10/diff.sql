spo diff.txt

prompt Default or temp tablespace in db1 NOT IN db2
select default_tablespace, temporary_tablespace
from user_users&&conn1
minus
select default_tablespace, temporary_tablespace
from user_users&&conn2;

prompt Default or temp tablespace in db2 NOT IN db1
select default_tablespace, temporary_tablespace
from user_users&&conn2
minus
select default_tablespace, temporary_tablespace
from user_users&&conn1;

prompt Tablespace quotas in db1 NOT IN db2
select tablespace_name, max_bytes
from user_ts_quotas&&conn1
minus
select tablespace_name, max_bytes
from user_ts_quotas&&conn2;

prompt Tablespace quotas in db2 NOT IN db1
select tablespace_name, max_bytes
from user_ts_quotas&&conn2
minus
select tablespace_name, max_bytes
from user_ts_quotas&&conn1;

prompt Objects in db1 NOT IN db2
select object_name, object_type
from user_objects&&conn1
minus
select object_name, object_type
from user_objects&&conn2 order by 2;

prompt Objects in db2 NOT IN db1
select object_name, object_type
from user_objects&&conn2
minus
select object_name, object_type
from user_objects&&conn1 order by 2;

prompt Tables in db1 NOT IN db2
select table_name
from user_tables&&conn1
minus
select table_name
from user_tables&&conn2;

prompt Tables in db2 NOT IN db1
select table_name
from user_tables&&conn2
minus
select table_name
from user_tables&&conn1;

prompt Indexes in db2 NOT IN db1
select table_name, index_name, index_type, uniqueness
from user_indexes&&conn2
minus
select table_name, index_name, index_type, uniqueness
from user_indexes&&conn1 order by 1, 2;

prompt Table columns db1 NOT IN db2
select table_name, column_name
from user_tab_columns&&conn1
minus
select table_name, column_name
from user_tab_columns&&conn2 order by 1,2;

prompt Table columns in db2 NOT IN db1
select table_name, column_name
from user_tab_columns&&conn2
minus
select table_name, column_name
from user_tab_columns&&conn1 order by 1,2;

spo off;
