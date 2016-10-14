select
 index_name
,partition_name
,tablespace_name
,high_value,status
from user_ind_partitions
order by 1,2;
