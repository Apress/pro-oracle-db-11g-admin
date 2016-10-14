select
 b.table_name
,a.index_name
,a.partition_name
,a.status
,b.locality
from user_ind_partitions a
    ,user_part_indexes   b
where a.index_name=b.index_name
and table_name = upper('&&part_table');
