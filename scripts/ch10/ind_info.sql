select
 a.index_name
,a.column_name
,b.status
,b.index_type
,a.column_position
from user_ind_columns a
    ,user_indexes     b
where a.table_name = upper('&table_name')
and   a.index_name = b.index_name
order by a.index_name, a.column_position;
